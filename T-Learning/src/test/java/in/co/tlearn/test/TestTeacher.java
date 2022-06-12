package in.co.tlearn.test;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import in.co.tlearn.bean.CourseBean;
import in.co.tlearn.bean.TeacherBean;
import in.co.tlearn.bean.UserBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.DuplicateRecordException;
import in.co.tlearn.model.CourseModelInt;
import in.co.tlearn.model.ModelFactory;
import in.co.tlearn.model.TeacherModelHibImp;
import in.co.tlearn.model.TeacherModelInt;

public class TestTeacher {
	private static TeacherModelInt model = new TeacherModelHibImp();

	public static void main(String[] args) throws ApplicationException, DuplicateRecordException {
		
		//testadd();
		//testdelete();
		//testupdate();  
		//testlist();
		//tetsearch();
		//testfindbypk();
		testfinbyemail();
		
	}

	private static void testfinbyemail() throws ApplicationException {
		
		TeacherBean dto = model.findByEmailId("php");
		CourseBean dto2 = new CourseBean();
		dto2.setId(8l);
		
		System.out.println(dto.getId() + "\t" + dto.getFirstname() + "\t" + dto.getLastname() + "\t"
				+ dto.getGender() + "\t" + dto.getDoj() + "\t" + dto.getQualifications() + "\t"
				+ dto.getMobileno() + "\t" + dto.getEmailid() + 
				   "\t"
				+ dto.getCourse_id() + "\t" + dto.getCourse_name());
		
		
	}


	private static void testfindbypk() throws ApplicationException {
		TeacherBean dto=model.findByPK(1L);
		System.out.println(dto.getId() + "\t" + dto.getFirstname() + "\t" + dto.getLastname() + "\t"
				+ dto.getGender() + "\t" + dto.getDoj() + "\t" + dto.getQualifications() + "\t"
				+ dto.getMobileno() + "\t" + dto.getEmailid() + 
				   "\t"
				+ dto.getCourse_id() + "\t" + dto.getCourse_name());
		
	}

	private static void tetsearch() throws ApplicationException {
TeacherBean dto1=new TeacherBean();
				
		ArrayList<TeacherBean> a = (ArrayList<TeacherBean>) model.search(dto1);
		for (TeacherBean dto : a) {
			System.out.println(dto.getId() + "\t" + dto.getFirstname() + "\t" + dto.getLastname() + "\t"
					+ dto.getGender() + "\t" + dto.getDoj() + "\t" + dto.getQualifications() + "\t"
					+ dto.getMobileno() + "\t" + dto.getEmailid() + 
					   "\t"
					+ dto.getCourse_id() + "\t" + dto.getCourse_name());
			

			}
		
	}

	private static void testlist() throws ApplicationException {
		
		TeacherBean dto=new TeacherBean();
		 List list = new ArrayList();
	        list = model.list(0,0);
	        if (list.size() < 0) {
	            System.out.println("Test list fail");
	        }
	        Iterator it = list.iterator();
	        while (it.hasNext()) {
	            dto = (TeacherBean) it.next();
	            System.out.println(dto.getId());
	            System.out.println(dto.getFirstname());
	            System.out.println(dto.getLastname());
	            System.out.println(dto.getDoj());
	            System.out.println(dto.getMobileno());
	            System.out.println(dto.getEmailid());
	           // System.out.println(dto.getCollegeid());
	            System.out.println(dto.getCreatedby());
	            System.out.println(dto.getCreateddatetime());
	            System.out.println(dto.getModifiedby());
		
	        }
	}

	private static void testupdate() {
		TeacherBean dto=new TeacherBean();
		SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
		try{
		dto.setId(1l);
		dto.setFirstname("yashuu");
		dto.setLastname("pandey");
		dto.setGender("male");
		dto.setDoj((sdf.parse("17/07/2000")));
		dto.setQualifications("btech");
		dto.setMobileno("6464628746");
		dto.setEmailid("yash@gmail.com");
		//dto.setCollegeid(2);
		dto.setCourse_id(1);
		//dto.setSubjectid(2);
		dto.setCreatedby("admin");
		dto.setModifiedby("admin");
		dto.setCreateddatetime(new Timestamp(new Date().getTime()));
		dto.setModifieddatetime(new Timestamp(new Date().getTime()));
		model.update(dto);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	private static void testdelete() throws ApplicationException {
		TeacherBean dto = new TeacherBean();
		dto.setId(2l);
		model.delete(dto);
	}

	private static void testadd() throws ApplicationException, DuplicateRecordException {
		TeacherBean dto=new TeacherBean();
		SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
		try{
		dto.setFirstname("mayur");
		dto.setLastname("khemot");
		dto.setGender("Female");
		dto.setDoj((sdf.parse("12/09/2015")));
		dto.setQualifications("mcom");
		dto.setEmailid("mayur12@gmail.com");
		dto.setMobileno("8945621233");
	//	dto.setCollegeid(1);
		dto.setCourse_id(2l);
	//	dto.setSubjectid(1);
		dto.setCreatedby("admin");
		dto.setModifiedby("admin");
		dto.setCreateddatetime(new Timestamp(new Date().getTime()));
		dto.setModifieddatetime(new Timestamp(new Date().getTime()));
		model.add(dto);}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	
}

