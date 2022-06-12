package in.co.tlearn.model;

import java.util.List;

import in.co.tlearn.bean.StudentBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.DuplicateRecordException;

public interface StudentModelInt {

	public long add(StudentBean dto)throws ApplicationException,DuplicateRecordException;
	public void delete(StudentBean dto)throws ApplicationException;
	public void update(StudentBean dto)throws ApplicationException,DuplicateRecordException;
	public List list()throws ApplicationException;
	public List list(int pageNo,int pageSize)throws ApplicationException;
	public List search(StudentBean dto)throws ApplicationException;
	public List search(StudentBean dto,int pageNo,int pageSize)throws ApplicationException;
	public StudentBean findByPK(long pk)throws ApplicationException;
	public StudentBean findByEmailId(String emailId)throws ApplicationException;
}
