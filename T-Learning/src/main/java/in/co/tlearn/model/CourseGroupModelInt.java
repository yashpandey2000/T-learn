package in.co.tlearn.model;

import java.util.List;

import in.co.tlearn.bean.CourseGroupBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.DuplicateRecordException;



/**
 * Interface of Course model
 * @author Yash Pandey
 *
 */

public interface CourseGroupModelInt {
	
	public long add(CourseGroupBean dto)throws ApplicationException,DuplicateRecordException;
	public void delete(CourseGroupBean dto)throws ApplicationException;
	public void update(CourseGroupBean dto)throws ApplicationException,DuplicateRecordException;
	
	
	public List list()throws ApplicationException;
	public List list(int pageNo,int pageSize)throws ApplicationException;
	public List search(CourseGroupBean dto)throws ApplicationException;
	public List search(CourseGroupBean dto,int pageNo,int pageSize)throws ApplicationException;
	public CourseGroupBean findByPK(long pk)throws ApplicationException;
	public CourseGroupBean findByName(String name)throws ApplicationException;
	public CourseGroupBean mycourse(CourseGroupBean dto)throws ApplicationException,DuplicateRecordException;

}
