package in.co.tlearn.model;

import java.util.List;


import in.co.tlearn.bean.TeacherBean;
import in.co.tlearn.bean.UserBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.DuplicateRecordException;



/**
 * Interface of Faculty model
 * @author Yash Pandey
 *
 */
public interface TeacherModelInt {
	
	public long add(TeacherBean dto)throws ApplicationException,DuplicateRecordException;
	public void delete(TeacherBean dto)throws ApplicationException;
	public void update(TeacherBean dto)throws ApplicationException,DuplicateRecordException;
	public List list()throws ApplicationException;
	public List list(int pageNo,int pageSize)throws ApplicationException;
	public List search(TeacherBean dto)throws ApplicationException;
	public List search(TeacherBean dto,int pageNo,int pageSize)throws ApplicationException;
	public TeacherBean findByPK(long pk)throws ApplicationException;
	public TeacherBean  findByEmailId(String emailId)throws ApplicationException;
	

}
