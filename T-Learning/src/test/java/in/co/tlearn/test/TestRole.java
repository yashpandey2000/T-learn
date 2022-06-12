package in.co.tlearn.test;

import java.sql.Timestamp;
import java.util.Date;

import in.co.tlearn.bean.RoleBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.DuplicateRecordException;
import in.co.tlearn.model.RoleModelHibImp;
import in.co.tlearn.model.RoleModelInt;

public class TestRole {
	

	private static RoleModelInt model = new RoleModelHibImp();
	
	public static void main(String[] args) throws ApplicationException, DuplicateRecordException {
		
		
		testadd();
		//testdelete();
		//testupdate();
	}

	private static void testupdate() throws ApplicationException, DuplicateRecordException {
		// TODO Auto-generated method stub
		RoleBean dto=new RoleBean();
		dto.setId(1L);
		dto.setName("admin");
		dto.setDescription("hello i am ADMIN !!");
		dto.setCreatedby("admin");
		dto.setModifiedby("admin");
		dto.setCreateddatetime(new Timestamp(new Date().getTime()));
		dto.setModifieddatetime(new Timestamp(new Date().getTime()));
		model.update(dto);
	}

	private static void testdelete() throws ApplicationException {
		// TODO Auto-generated method stub
		RoleBean dto=new RoleBean();
		dto.setId(1L);
		model.delete(dto);
	}

	private static void testadd() throws ApplicationException, DuplicateRecordException {
		// TODO Auto-generated method stub
		RoleBean dto=new RoleBean();
		dto.setName("Teacher");
		dto.setDescription("TEACHER");
		dto.setCreatedby("admin");
		dto.setModifiedby("admin");
		dto.setCreateddatetime(new Timestamp(new Date().getTime()));
		dto.setModifieddatetime(new Timestamp(new Date().getTime()));
		//System.out.println("ROle ADd");
		model.add(dto);
	}

}
