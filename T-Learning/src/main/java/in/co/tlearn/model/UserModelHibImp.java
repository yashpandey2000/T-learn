package in.co.tlearn.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import in.co.tlearn.bean.RoleBean;
import in.co.tlearn.bean.TeacherBean;
import in.co.tlearn.bean.UserBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.DuplicateRecordException;
import in.co.tlearn.exception.RecordNotFoundException;
import in.co.tlearn.util.EmailBuilder;
import in.co.tlearn.util.EmailMessage;
import in.co.tlearn.util.EmailUtility;
import in.co.tlearn.util.HibDataSource;

public class UserModelHibImp implements UserModelInt{
	//public static final int student=2;
	public long add(UserBean dto) throws ApplicationException, DuplicateRecordException {

			System.out.println("1234");
			UserBean existDto = null;
			//TeacherBean dto1 = null;
			RoleBean bean = null;
			
			
			RoleModelInt model = ModelFactory.getInstance().getRoleModel();
			RoleBean cdto = model.findByPK(dto.getRoleid());
			dto.setRolename(cdto.getName());
			
			/*TeacherModelInt model1 = ModelFactory.getInstance().getFacultyModel();
			TeacherBean dto2 = model1.findByPK(dto1.getTea_id());
			dto1.setTea_name(dto2.getFirstname()+" "+dto2.getLastname());*/
			
			/*if(dto.getRoleid()==bean.Teacher){
			
			UserModelHibImp model1 = (UserModelHibImp) ModelFactory.getInstance().getUserModel();
			UserBean dto2 = model1.findByPK(dto.getRoleid());
		    dto1.setId(dto2.getId());
			}*/
			
		   //TeacherModelInt model1 = ModelFactory.getInstance().getFacultyModel();
			 
			existDto = findByLogin(dto.getEmailid());
			if (existDto != null) {
				throw new DuplicateRecordException("login id already exist");
			}
			
         /*   if(cdto.getId() == student){
				
			model1.add(dto);
			}*/
			Session session = HibDataSource.getSession();
			Transaction tx = null;
			try {
				tx = session.beginTransaction();
	            session.save(dto);
				tx.commit();
			} catch (HibernateException e) {
				e.printStackTrace();
				// TODO: handle exception
				if (tx != null) {
					tx.rollback();

				}
				throw new ApplicationException("Exception in User Add " + e.getMessage());
			} finally {
				session.close();
			}
			System.out.println("56789");
			/* log.debug("Model add End"); */
			return dto.getId();
			
		}

	public void delete(UserBean dto) throws ApplicationException {
		Session session = null;
		Transaction tx = null;
		try {
			session = HibDataSource.getSession();
			tx = session.beginTransaction();
			session.delete(dto);
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			throw new ApplicationException("Exception in User Delete" + e.getMessage());
		} finally {
			session.close();
		}
		
	}

	public void update(UserBean dto) throws ApplicationException, DuplicateRecordException {
		Session session = null;
		Transaction tx = null;
		/*UserBean existDto = findByLogin(dto.getEmailid());
		// Check if updated LoginId already exist
		if (existDto != null && existDto.getId() != dto.getId()) {
			throw new DuplicateRecordException("LoginId is already exist");
		}*/

		try {
			session = HibDataSource.getSession();
			tx = session.beginTransaction();
			session.saveOrUpdate(dto);
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			throw new ApplicationException("Exception in User update" + e.getMessage());
		} finally {
			session.close();
		}
		
	}

	public UserBean findByPK(long pk) throws ApplicationException {
		Session session = null;
		UserBean dto = null;
		try {
			session = HibDataSource.getSession();
			dto = (UserBean) session.get(UserBean.class, pk);

		} catch (HibernateException e) {
			throw new ApplicationException("Exception : Exception in getting User by pk");
		} finally {
			session.close();
		}

		return dto;
	}

	public UserBean findByLogin(String login) throws ApplicationException {
		Session session = null;
		UserBean dto = null;
		try {
			session = HibDataSource.getSession();
			Criteria criteria = session.createCriteria(UserBean.class);
			criteria.add(Restrictions.eq("emailid", login));
			List list = criteria.list();
			if (list.size() == 1) {
				dto = (UserBean) list.get(0);
			}
		} catch (HibernateException e) {
			e.printStackTrace();
			throw new ApplicationException("Exception in getting User by Login " + e.getMessage());

		} finally {
			session.close();
		}

		return dto;
	}
	
	

	public List list() throws ApplicationException {
		// TODO Auto-generated method stub
		return list(0, 0);
	}

	public List list(int pageNo, int pageSize) throws ApplicationException {
		Session session = null;
		List list = null;
		try {
			session = HibDataSource.getSession();
			Criteria criteria = session.createCriteria(UserBean.class);
			if (pageSize > 0) {
				pageNo = (pageNo - 1) * pageSize;
				criteria.setFirstResult(pageNo);
				criteria.setMaxResults(pageSize);

			}
			list = criteria.list();

		} catch (HibernateException e) {
			throw new ApplicationException("Exception : Exception in  Users list");
		} finally {
			session.close();
		}

		return list;
	}

	public List search(UserBean dto, int pageNo, int pageSize) throws ApplicationException {
		Session session = null;
		ArrayList<UserBean> list = null;
		try {
			session = HibDataSource.getSession();
			Criteria criteria = session.createCriteria(UserBean.class);
			if (dto != null) {
				if (dto.getId() > 0) {
					criteria.add(Restrictions.like("id", dto.getId()));
				}
				if (dto.getFirstname() != null && dto.getFirstname().length() > 0) {
					criteria.add(Restrictions.like("firstname", dto.getFirstname() + "%"));
				}

				if (dto.getLastname() != null && dto.getLastname().length() > 0) {
					criteria.add(Restrictions.like("lastname", dto.getLastname() + "%"));
				}
				if (dto.getEmailid() != null && dto.getEmailid().length() > 0) {
					criteria.add(Restrictions.like("emailid", dto.getEmailid() + "%"));
				}
				if (dto.getPassword() != null && dto.getPassword().length() > 0) {
					criteria.add(Restrictions.like("password", dto.getPassword() + "%"));
				}
				if (dto.getGender() != null && dto.getGender().length() > 0) {
					criteria.add(Restrictions.like("gender", dto.getGender() + "%"));
				}
				if (dto.getDob() != null && dto.getDob().getDate() > 0) {
					criteria.add(Restrictions.eq("dob", dto.getDob()));
				}
//				if (dto.getLastlogin() != null && dto.getLastlogin().getTime() > 0) {
//					criteria.add(Restrictions.eq("lastLogin", dto.getLastlogin()));
//				}
				if (dto.getRoleid() > 0) {
					criteria.add(Restrictions.eq("roleid", dto.getRoleid()));
				}
//				if (dto.getUnsuccessfullogin() > 0) {
//					criteria.add(Restrictions.eq("unSuccessfulLogin", dto.getUnsuccessfullogin()));
//				}
			}
			// if pageSize is greater than 0
			if (pageSize > 0) {
				pageNo = (pageNo - 1) * pageSize;
				criteria.setFirstResult(pageNo);
				criteria.setMaxResults(pageSize);
			}
			list = (ArrayList<UserBean>) criteria.list();
		} catch (HibernateException e) {
			throw new ApplicationException("Exception in user search");
		} finally {
			session.close();
		}

		return list;
	}

	public List search(UserBean dto) throws ApplicationException {
		// TODO Auto-generated method stub
		return search(dto, 0, 0);
	}

	public boolean changePassword(long id, String newPassword, String oldPassword)
			throws ApplicationException, RecordNotFoundException {
		boolean flag = false;
		UserBean dtoExist = null;

		dtoExist = findByPK(id);
		System.out.println("in method password" + dtoExist.getPassword() + "jjjjjjj" + oldPassword);
		if (dtoExist != null && dtoExist.getPassword().equals(oldPassword)) {
			dtoExist.setPassword(newPassword);
			try {
				update(dtoExist);
			} catch (DuplicateRecordException e) {

				throw new ApplicationException("LoginId is already exist");
			}
			flag = true;
		} else {
			throw new RecordNotFoundException("Login not exist");
		}

		/*HashMap<String, String> map = new HashMap<String, String>();

		map.put("login", dtoExist.getEmailid());
		map.put("password", dtoExist.getPassword());
		map.put("firstName", dtoExist.getFirstname());
		map.put("lastName", dtoExist.getLastname());

		String message = EmailBuilder.getChangePasswordMessage(map);

		EmailMessage msg = new EmailMessage();

		msg.setTo(dtoExist.getEmailid());
		msg.setSubject("Password has been changed Successfully.");
		msg.setMessage(message);
		msg.setMessageType(EmailMessage.HTML_MSG);

		EmailUtility.sendMail(msg);*/

		return flag;
	}

	public UserBean authenticate(String login, String password) throws ApplicationException {
		Session session = null;
		UserBean dto = null;
		session = HibDataSource.getSession();
		Query q = session.createQuery("from UserBean where emailid=? and password=?");
		q.setString(0, login);
		q.setString(1, password);
		List list = q.list();
		if (list.size() > 0) {
			dto = (UserBean) list.get(0);
		} else {
			dto = null;

		}
		return dto;
	}

	public boolean forgetPassword(String login) throws ApplicationException, RecordNotFoundException {
		UserBean userData = findByLogin(login);
		boolean flag = false;
		System.out.println("i am forget password method" + userData);
		if (userData == null) {
			throw new RecordNotFoundException("Email Id Does not matched.");

		}

		/*HashMap<String, String> map = new HashMap<String, String>();
		map.put("login", userData.getEmailid());
		map.put("password", userData.getPassword());
		map.put("firstName", userData.getFirstname());
		map.put("lastName", userData.getLastname());
		String message = EmailBuilder.getForgetPasswordMessage(map);
		EmailMessage msg = new EmailMessage();
		msg.setTo(login);
		msg.setSubject("SUNARYS ORS Password reset");
		msg.setMessage(message);
		msg.setMessageType(EmailMessage.HTML_MSG);
		EmailUtility.sendMail(msg);
		flag = true;*/

		return flag;
	}

	public boolean resetPassword(UserBean dto) throws ApplicationException, RecordNotFoundException {
		// TODO Auto-generated method stub
		return false;
	}

	public long registerUser(UserBean dto) throws ApplicationException, DuplicateRecordException {
		long pk = add(dto);

		/*HashMap<String, String> map = new HashMap<String, String>();
		map.put("login", dto.getEmailid());
		map.put("password", dto.getPassword());

		String message = EmailBuilder.getForgetPasswordMessage(map);

		EmailMessage msg = new EmailMessage();

		msg.setTo(dto.getEmailid());
		msg.setSubject("Password has been reset");
		msg.setMessage(message);
		msg.setMessageType(EmailMessage.HTML_MSG);

		EmailUtility.sendMail(msg);*/

		return pk;
	}

	public List getRoles(UserBean dto) throws ApplicationException {
		// TODO Auto-generated method stub
		return null;
	}


	public UserBean findByName(boolean name) throws ApplicationException {
		// TODO Auto-generated method stub
		return null;
	}

	/*public UserBean findByName(boolean name) throws ApplicationException {
		Session session = null;
		UserBean dto = null;
		try {
			session = HibDataSource.getSession();
			Criteria criteria = session.createCriteria(RoleBean.class);
			criteria.add(Restrictions.eq("rolename", name));
			List list = criteria.list();
			if (list.size() > 0) {
				dto = (UserBean) list.get(0);
			}
		} catch (HibernateException e) {

			//throw new ApplicationException("Exception in getting Role by Login " + e.getMessage());

		} finally {
			session.close();
		}
		return dto;

	}*/

}
