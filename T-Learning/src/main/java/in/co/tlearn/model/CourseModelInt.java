package in.co.tlearn.model;

import java.util.List;


import in.co.tlearn.bean.CourseBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.DuplicateRecordException;



/**
 * Interface of Course model
 * @author Yash Pandey
 *
 */

public interface CourseModelInt {
	
	public long add(CourseBean dto)throws ApplicationException,DuplicateRecordException;
	public void delete(CourseBean dto)throws ApplicationException;
	public void update(CourseBean dto)throws ApplicationException,DuplicateRecordException;
	public List list()throws ApplicationException;
	public List list(int pageNo,int pageSize)throws ApplicationException;
	public List search(CourseBean dto)throws ApplicationException;
	public List search(CourseBean dto,int pageNo,int pageSize)throws ApplicationException;
	public CourseBean findByPK(long pk)throws ApplicationException;
	public CourseBean findByName(String name)throws ApplicationException;
	public CourseBean findByTeaID(long pk)throws ApplicationException;
	public List mycourse(int pageNo,int pageSize)throws ApplicationException,DuplicateRecordException;
 
}
