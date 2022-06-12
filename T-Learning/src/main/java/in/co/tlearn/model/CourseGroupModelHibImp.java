package in.co.tlearn.model;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import in.co.tlearn.bean.CourseGroupBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.DuplicateRecordException;
import in.co.tlearn.util.HibDataSource;





/**
 * Hibernate implements of course model
 * @author Yash Pandey
 *
 */
public class CourseGroupModelHibImp implements CourseGroupModelInt{

	

	public void delete(CourseGroupBean dto) throws ApplicationException {
		Session session =null;
		Transaction tx = null;
		try{
		session =  HibDataSource.getSession();
		tx = session.beginTransaction();
		session.delete(dto);
        tx.commit();
		
		}catch(HibernateException e){
			e.printStackTrace();
			if(tx!=null){
				tx.rollback();
			}
			
			throw new ApplicationException("Exception in course delete"+e.getMessage());
		}finally {
			session.close();
		}
		
	}

	public void update(CourseGroupBean dto) throws ApplicationException, DuplicateRecordException {
		Session session = null;
		Transaction tx = null;
		
		/*TeacherModelInt model1 = (TeacherModelInt) ModelFactory.getInstance().getCourseModel();
		TeacherBean dto2 = model1.findByPK(dto.getTea_id());
		dto.setTea_name(dto2.getFirstname()+""+dto2.getLastname());*/
		
		try{
			session = HibDataSource.getSession();
			tx = session.beginTransaction();
			session.update(dto);
			tx.commit();
			
		}catch(HibernateException e){
			e.printStackTrace();
			if(tx!=null){
				tx.rollback();
			}
			throw new ApplicationException("Exception in course update");
		}finally {
			session.close();
		}
		
	}

	public List list() throws ApplicationException {
		// TODO Auto-generated method stub
		return list(0,0);
	}

	public List list(int pageNo, int pageSize) throws ApplicationException {
		Session session = null;
		List list = null;
		try{
			
			session = HibDataSource.getSession();
			Criteria criteria = session.createCriteria(CourseGroupBean.class);
			if(pageSize>0){
				criteria.setFirstResult(pageNo);
				criteria.setMaxResults(pageSize);
			}
		list = criteria.list();
		}catch (HibernateException e) {
			// TODO: handle exception
			throw new ApplicationException("Exception : exception in course list");
		}
		return list;
	}

	public List search(CourseGroupBean dto) throws ApplicationException {
		// TODO Auto-generated method stub
		return search(dto,0,0);
	}

	public List search(CourseGroupBean dto, int pageNo, int pageSize) throws ApplicationException {
		Session session = null;
		List list = null;
		try{
			session = HibDataSource.getSession();
			Criteria criteria = session.createCriteria(CourseGroupBean.class);
			if(dto.getId()>0){
				criteria.add(Restrictions.eq("id", dto.getId()));
			}
			if(dto.getCourse_group_name()!=null&& dto.getCourse_group_name().length()>0){
				criteria.add(Restrictions.like("coursename", dto.getCourse_group_name()+"%"));
			}
			
			if(dto.getCourse_group_description()!=null && dto.getCourse_group_description().length()>0){
				criteria.add(Restrictions.like("description",dto.getCourse_group_description()+"%"));
			}
			
			
			if(pageSize>0){
				criteria.setFirstResult((pageNo-1)*pageSize);
				criteria.setMaxResults(pageSize);
			}
			list = criteria.list();
		}catch(HibernateException e) {
			// TODO: handle exception
			throw new ApplicationException("Exception in search course");
		}finally {
			session.close();
		}
		return list;
	}
	
	public CourseGroupBean findByPK(long pk) throws ApplicationException {
		Session session = null;
		CourseGroupBean dto = null;
		try{
			session = HibDataSource.getSession();
			dto = (CourseGroupBean) session.get(CourseGroupBean.class, pk);
			
		}catch(HibernateException e){
			throw new ApplicationException("Exception : Exception in getting course by pk");
		}finally {
			session.close();
		}
		return dto;
	}

	public CourseGroupBean findByName(String name) throws ApplicationException {
		Session session = null;
		CourseGroupBean dto = null;
		try{
			session = HibDataSource.getSession();
			Criteria criteria = session.createCriteria(CourseGroupBean.class);
			criteria.add(Restrictions.eq("course_group_name", name));
			List list  = criteria.list();
			if(list.size()>0){
				dto = (CourseGroupBean) list.get(0);
			}
		}catch(HibernateException e){
			throw new ApplicationException("exception :exception in getting course by name "+e.getMessage());
		}finally {
			session.close();
		}
		return dto;
	}

	/*public CourseBean mycourse(CourseBean dto) throws ApplicationException, DuplicateRecordException {
		// TODO Auto-generated method stub
		return null;
	}*/

	public long add(CourseGroupBean dto) throws ApplicationException, DuplicateRecordException {
		Session session = null;
		Transaction tx = null;
		long pk = 0;
		
		
		CourseGroupBean existDto = findByName(dto.getCourse_group_name());
		
		if (existDto != null) {
			throw new DuplicateRecordException("Course name already exist");
		}
		try{
			session = HibDataSource.getSession();
			tx = session.beginTransaction();
			session.save(dto);
			pk = dto.getId();
			tx.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			if(tx!=null){
				tx.rollback();
			}
			throw new ApplicationException("Exception in course add"+e.getMessage());
		}finally {
			session.close();
		}
		
		return pk;

	}

	public CourseGroupBean mycourse(CourseGroupBean dto) throws ApplicationException, DuplicateRecordException {
		// TODO Auto-generated method stub
		return null;
	}

	
	

	

}
