package in.co.tlearn.model;

import java.util.List;


import in.co.tlearn.bean.RoleBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.DuplicateRecordException;

public interface RoleModelInt {
	
	public long add(RoleBean dto)throws ApplicationException,DuplicateRecordException;
	public void delete(RoleBean dto)throws ApplicationException;
	public void update(RoleBean dto)throws ApplicationException,DuplicateRecordException;
	public List list()throws ApplicationException;
	public List list(int pageNo,int pageSize)throws ApplicationException;
	public List search(RoleBean dto)throws ApplicationException;
	public List search(RoleBean dto,int pageNo,int pageSize)throws ApplicationException;
	public RoleBean findByPK(long pk)throws ApplicationException;
	public RoleBean findByName(String name)throws ApplicationException;

}
