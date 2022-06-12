package in.co.tlearn.test;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import in.co.tlearn.bean.StudentBean;
import in.co.tlearn.bean.TeacherBean;
import in.co.tlearn.bean.UserBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.DuplicateRecordException;
import in.co.tlearn.exception.RecordNotFoundException;
import in.co.tlearn.model.UserModelHibImp;
import in.co.tlearn.model.UserModelInt;

public class TestUser {
	
	public static UserModelInt model = new UserModelHibImp();
	
	public static void main(String[] args) throws ApplicationException, DuplicateRecordException, ParseException, RecordNotFoundException {
		
		 testadd();
		//testdelete();
		//testupdate();
		//testsearch();
		//testlist();
		
				//testfindbypk();
			  // testfindbyloginid();
				
				//testauthenticate();
				//testchangepass(); //**
				
				//testregisteruser();
				//testforgetpassword();
	}

	
	
	private static void testauthenticate() {
try{
			
			UserBean dto = new UserBean();
			dto.setEmailid("yashpanday2000@gmail.com");
			dto.setPassword("Yash@123");
			dto =model.authenticate(dto.getEmailid(),dto.getPassword());
			if(dto!=null){
				
				System.out.println("login successful");
			}
			else{
				
				System.out.println("invalid loginid & password");
			}
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}



	private static void testfindbyloginid() throws ApplicationException {
		UserBean dto = model.findByLogin("yashpanday2000@gmail.com");
		System.out.println(dto.getId() + "\t" + dto.getFirstname() + "\t" + dto.getLastname() + "\t" + dto.getEmailid()
		+ "\t" + dto.getPassword() + "\t" + dto.getDob() + "\t" + dto.getMobileno() + "\t" + dto.getRoleid()
		+ "\t" + dto.getGender());
		
	}



	private static void testforgetpassword() throws ApplicationException, RecordNotFoundException {
		 model.forgetPassword("keldgdfgash2323@gmail.com");
			System.out.println("is working");
	}



	private static void testregisteruser() {


UserBean dto = new UserBean();
		
		try{
			
			SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");
			
		dto.setFirstname("ram");
		dto.setLastname("mehta");
		dto.setEmailid("keldgdfgash2323@gmail.com");
		dto.setPassword("1234");
		//bean.setConfirmpassword("1234");
		dto.setDob(sdf.parse("19/5/2016"));
		dto.setGender("male");
		dto.setRoleid(2);
		
		long pk = model.registerUser(dto);
		
			System.out.println("successful register");
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}



	private static void testlist() throws ApplicationException {

		UserBean dto = new UserBean();
		List list = new ArrayList();
		list = model.list(1, 10);
		if (list.size() < 0) {
			System.out.println("list fail");
		}
		Iterator it = list.iterator();
		while (it.hasNext()) {
			dto = (UserBean) it.next();
			System.out.println(dto.getId());
			System.out.println(dto.getFirstname());
			System.out.println(dto.getLastname());
			System.out.println(dto.getEmailid());
			System.out.println(dto.getPassword());
			System.out.println(dto.getDob());
			System.out.println(dto.getRoleid());
			System.out.println(dto.getGender());
			System.out.println(dto.getMobileno());
			System.out.println(dto.getCreatedby());
			System.out.println(dto.getModifiedby());
			System.out.println(dto.getCreateddatetime());
			System.out.println(dto.getModifieddatetime());
		}
		
	}

	private static void testsearch() throws ApplicationException {
		UserBean dto1 = new UserBean();
	       dto1.setId(2L);
			
	        
			ArrayList<UserBean> a = (ArrayList<UserBean>) model.search(dto1,0,0);
			
			for (UserBean dto : a) {
				System.out.println(dto.getId() + "\t" + dto.getFirstname() + "\t" + dto.getLastname() + "\t" + dto.emailid
				+ "\t" + dto.getPassword() + "\t" + dto.getDob() + "\t" + dto.getMobileno() + "\t" + dto.getRoleid()
				+ "\t" + dto.getGender());
				
			}
				
		
	}

	private static void testupdate() throws ParseException, ApplicationException, DuplicateRecordException {
		UserBean dto = new UserBean();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		dto.setId(2L);
		dto.setFirstname("yash");
		
		dto.setLastname("pandey");
		dto.setDob(sdf.parse("17/06/2000"));
		
		dto.setPassword("Yash@123");
		dto.setEmailid("yashpanday2000@gmail.com");
		dto.setGender("male");
		
		dto.setCreatedby("admin");
		dto.setModifiedby("admin");
		dto.setRoleid(1);
		dto.setMobileno("9406653787");
		
		dto.setCreateddatetime(new Timestamp(new Date().getTime()));
		dto.setModifieddatetime(new Timestamp(new Date().getTime()));
		model.update(dto);
		System.out.println("data update successfully");
		
	}

	private static void testdelete() throws ApplicationException {
		UserBean dto = new UserBean();
		dto.setId(1L);
		model.delete(dto);
		System.out.println("delete data successfully");
		
		
	}

	private static void testadd() throws ApplicationException, DuplicateRecordException, ParseException {
		
		UserBean dto = new UserBean();
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		
		dto.setFirstname("kelash");
		dto.setLastname("metha");
		dto.setDob(sdf.parse("17/06/1995"));
		
		dto.setPassword("Kealsh@123");
		dto.setEmailid("Kelash1@gmail.com");
		dto.setGender("Male");
        //dto.setLock("Active");
		dto.setCreatedby("admin");
		dto.setModifiedby("admin");
		dto.setRoleid(2l);
		dto.setMobileno("988969568");
		dto.setProfile("default.jpg");
		dto.setModifieddatetime(new Timestamp(new Date().getTime()));
		dto.setCreateddatetime(new Timestamp(new Date().getTime()));
		
		 long pk = model.add(dto); 
		System.out.println(pk + "data successfully insert"); 
		
	}

}
