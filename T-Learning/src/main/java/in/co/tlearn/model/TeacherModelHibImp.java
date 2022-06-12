package in.co.tlearn.model;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import in.co.tlearn.bean.CourseBean;
import in.co.tlearn.bean.RoleBean;
import in.co.tlearn.bean.TeacherBean;
import in.co.tlearn.bean.UserBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.DuplicateRecordException;
import in.co.tlearn.util.HibDataSource;

;



/**
 * Hibernate implements of Faculty model
 * @author Yash Pandey
 *
 */
public class TeacherModelHibImp implements TeacherModelInt{

	public long add(TeacherBean dto) throws ApplicationException, DuplicateRecordException {
		
		Session session = null;
		Transaction tx = null;
		long pk = 0;
        
		/*
		String CourseName = dto2.getCourse_name();
		dto.setCourse_name(CourseName);*/
		
		/*
	    dto.setId(dto1.getId());*/
		
		
		
		
		TeacherBean duplicataRole = findByEmailId(dto.getEmailid());
		
				if (duplicataRole != null) {
					throw new DuplicateRecordException("Faculty already exists");
				}
				
				try {
					session = HibDataSource.getSession();
					tx = session.beginTransaction();
					session.save(dto);
					pk = dto.getId();
					tx.commit();
				} catch (HibernateException e) {
					e.printStackTrace();
					// TODO: handle exception
					if (tx != null) {
						tx.rollback();

					}
					throw new ApplicationException("Exception in faculty Add " + e.getMessage());
				} finally {
					session.close();
				}
				return pk;
	}

	public void delete(TeacherBean dto) throws ApplicationException {
		Session session = null;
		Transaction tx = null;
		try {
			session = HibDataSource.getSession();
			tx = session.beginTransaction();
			session.delete(dto);
			tx.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();

			}
			throw new ApplicationException("Exception in faculty delete " + e.getMessage());
		} finally {
			session.close();
		}
		
	}

	public void update(TeacherBean dto) throws ApplicationException, DuplicateRecordException {
		Session session = null;
		Transaction tx = null;
		
        
		CourseModelInt model1 = ModelFactory.getInstance().getCourseModel();
		CourseBean dto2 = model1.findByPK(dto.getCourse_id());
		String CourseName = dto2.getCourse_name();
		dto.setCourse_name(CourseName);
		
		
		try {
			session = HibDataSource.getSession();
			tx = session.beginTransaction();
			session.update(dto);
			tx.commit();

		} catch (HibernateException e) {
			e.printStackTrace();
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();

			}
			throw new ApplicationException("Exception in faculty update " + e.getMessage());
		} finally {
			session.close();
		}
		
	}

	public List list() throws ApplicationException {
		
		return list(0, 0);
	}

	public List list(int pageNo, int pageSize) throws ApplicationException {
		
		Session session = null;
		List list = null;
		try {
			session = HibDataSource.getSession();
			Criteria criteria = session.createCriteria(TeacherBean.class);
			if (pageSize > 0) {
				pageNo = ((pageNo - 1) * pageSize) + 1;
				criteria.setFirstResult(pageNo);
				criteria.setMaxResults(pageSize);
			}
			list = criteria.list();
		} catch (HibernateException e) {

			throw new ApplicationException("Exception : Exception in  faculty list");
		} finally {
			session.close();
		}
		return list;
	}

	public List search(TeacherBean dto) throws ApplicationException {
		
		return search(dto, 0, 0);
	}

	public List search(TeacherBean dto, int pageNo, int pageSize) throws ApplicationException {
	
		Session session = null;
        List list = null;
        try {
            session = HibDataSource.getSession();
            Criteria criteria = session.createCriteria(TeacherBean.class);
          if(dto!=null){
            if (dto.getId() >0) {
                criteria.add(Restrictions.eq("id", dto.getId()));
            }
            if (dto.getFirstname() != null && dto.getFirstname().length() > 0) {
                criteria.add(Restrictions.like("firstname", dto.getFirstname() + "%"));
            }
            if (dto.getEmailid() != null && dto.getEmailid().length() > 0) {
                criteria.add(Restrictions.like("emailid", dto.getEmailid()
                        + "%"));
            }
            if (dto.getLastname() != null && dto.getLastname().length() > 0) {
                criteria.add(Restrictions.like("lastname", dto.getLastname() + "%"));
            }
           
            if (dto.getCourse_id() > 0) {
                criteria.add(Restrictions.eq("courseid", dto.getCourse_id()));
            }
           
          }

            // if page size is greater than zero the apply pagination
            if (pageSize > 0) {
                criteria.setFirstResult(((pageNo - 1) * pageSize));
                criteria.setMaxResults(pageSize);
            }

            list = criteria.list();
        } catch (HibernateException e) {
            
            throw new ApplicationException("Exception in course search");
        } finally {
            session.close();
        }

       
        return list;
		
	}

	public TeacherBean findByPK(long pk) throws ApplicationException {
		
		Session session = null;
		TeacherBean dto = null;
		try {
			session = HibDataSource.getSession();

			dto = (TeacherBean) session.get(TeacherBean.class, pk);
		} catch (HibernateException e) {

			throw new ApplicationException("Exception : Exception in getting faculty by pk");
		} finally {
			session.close();
		}
		return dto;
		
	}

	public TeacherBean findByEmailId(String emailId) throws ApplicationException {
		// TODO Auto-generated method stub
		return null;
	}

	/*public TeacherBean findByEmailId(String emailId) throws ApplicationException {	
		
		Session session = null;
		UserBean dto = null;
		session = HibDataSource.getSession();
		Query q = session.createQuery("from UserBean where ");
		//q.setString(0, login);
		//q.setString(1, password);
		List list = q.list();
		if (list.size() > 0) {
			dto = (UserBean) list.get(0);
		} else {
			dto = null;

		}
		return (TeacherBean) dto;
	}
*/

}
