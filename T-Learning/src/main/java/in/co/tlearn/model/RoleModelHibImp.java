package in.co.tlearn.model;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;


import in.co.tlearn.bean.RoleBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.DuplicateRecordException;
import in.co.tlearn.util.HibDataSource;



/**
 * Hibernate implements of Role model
 * @author Yash Pandey
 *
 */
public class RoleModelHibImp implements RoleModelInt{

	public long add(RoleBean dto) throws ApplicationException, DuplicateRecordException {
		
		Session session = null;
		Transaction tx = null;
		long pk = 0;
		
		/*RoleBean existDto = findByName(dto.getName());
		if (existDto != null) {
			throw new DuplicateRecordException("Role already exist");
		}*/
		
		try {
			session = HibDataSource.getSession();
			tx = session.beginTransaction();
			session.save(dto);
			System.out.println("save");
			pk = dto.getId();
			tx.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();

			}
			throw new ApplicationException("Exception in Role Add " + e.getMessage());
		} finally {
			session.close();
		}
		return pk;
		
	}

	public void delete(RoleBean dto) throws ApplicationException {
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
			throw new ApplicationException("Exception in Role delete " + e.getMessage());
		} finally {
			session.close();
		}
		
	}

	public void update(RoleBean dto) throws ApplicationException, DuplicateRecordException {
		Session session = null;
		Transaction tx = null;
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
			throw new ApplicationException("Exception in Role update " + e.getMessage());
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
			Criteria criteria = session.createCriteria(RoleBean.class);
			if (pageSize > 0) {
				pageNo = ((pageNo - 1) * pageSize) + 1;
				criteria.setFirstResult(pageNo);
				criteria.setMaxResults(pageSize);
			}
			list = criteria.list();
		} catch (HibernateException e) {

			throw new ApplicationException("Exception : Exception in  role list");
		} finally {
			session.close();
		}
		return list;
	}

	public List search(RoleBean dto) throws ApplicationException {
		// TODO Auto-generated method stub
		return search(dto, 0, 0);
	}

	public List search(RoleBean dto, int pageNo, int pageSize) throws ApplicationException {
		
		Session session=null;
		List list=null;
		try {
			session=HibDataSource.getSession();
			Criteria criteria=session.createCriteria(RoleBean.class);
			if(dto.getId()>0){
				criteria.add(Restrictions.eq("id", dto.getId()));
			}
			if(dto.getName()!=null&& dto.getName().length()>0){
				criteria.add(Restrictions.like("name", dto.getName()+"%"));
			}
			if(dto.getDescription()!=null&& dto.getDescription().length()>0){
				criteria.add(Restrictions.like("description", dto.getDescription()+"%"));
			}
			if(pageSize>0){
				criteria.setFirstResult((pageNo-1)*pageSize);
				criteria.setMaxResults(pageSize);
			}
			list=criteria.list();
		} catch (HibernateException e) {
            
            throw new ApplicationException("Exception in course search");
        } finally {
            session.close();
        }
		return list;
	}

	public RoleBean findByPK(long pk) throws ApplicationException {
        Session session = HibDataSource.getSession();
		
		try {
			RoleBean dto = (RoleBean) session.get(RoleBean.class, pk);
			return dto;
		} catch (HibernateException e) {

			throw new ApplicationException("Exception : Exception in getting Role by pk");
		} finally {
			session.close();
		}
		
	}

	public RoleBean findByName(String name) throws ApplicationException {
		Session session = null;
		RoleBean dto = null;
		try {
			session = HibDataSource.getSession();
			Criteria criteria = session.createCriteria(RoleBean.class);
			criteria.add(Restrictions.eq("name", name));
			List list = criteria.list();
			if (list.size() > 0) {
				dto = (RoleBean) list.get(0);
			}
		} catch (HibernateException e) {

			throw new ApplicationException("Exception in getting Role by Login " + e.getMessage());

		} finally {
			session.close();
		}
		return dto;

	}



}
