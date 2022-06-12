package in.co.tlearn.model;

import java.util.List;

import in.co.tlearn.bean.UserBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.DuplicateRecordException;
import in.co.tlearn.exception.RecordNotFoundException;







/**
 * Interface of User model
 * @author Yash Pandey
 *
 */
public interface UserModelInt {

	public long add(UserBean dto)throws ApplicationException,DuplicateRecordException;
	public void delete(UserBean dto)throws ApplicationException;
	//public boolean update(UserBean dto)throws ApplicationException,DuplicateRecordException;
	
	public void update(UserBean dto)throws ApplicationException,DuplicateRecordException;
	public UserBean findByPK(long pk)throws ApplicationException;
	public UserBean findByLogin(String login)throws ApplicationException;
	public UserBean findByName(boolean name)throws ApplicationException;
	public List list()throws ApplicationException;
	public List list(int pageNo,int pageSize)throws ApplicationException;
	public List search(UserBean dto,int pageNo,int pageSize)throws ApplicationException;
	public List search(UserBean dto)throws ApplicationException;
	public boolean changePassword(long id,String newPassword,String oldPassword)throws ApplicationException, RecordNotFoundException;
	public UserBean authenticate(String login,String password)throws ApplicationException;
	public boolean forgetPassword(String login)throws ApplicationException, RecordNotFoundException;
	public boolean resetPassword(UserBean dto)throws ApplicationException,RecordNotFoundException;
	public long registerUser(UserBean dto)throws ApplicationException,DuplicateRecordException;
	public List getRoles(UserBean dto)throws ApplicationException;
	
}
