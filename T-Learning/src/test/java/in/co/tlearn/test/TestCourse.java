package in.co.tlearn.test;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import in.co.tlearn.bean.CourseBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.DuplicateRecordException;
import in.co.tlearn.model.CourseModelHibImp;
import in.co.tlearn.model.CourseModelInt;

public class TestCourse {
	
	public static CourseModelInt model = new CourseModelHibImp();
	
	public static void main(String[] args) throws ApplicationException, DuplicateRecordException {
		
		testadd();
		//testupdate();
		//testdelete();
		//testfindbypk();
		//testfindbyname();
		//testsearch();
		//testlist();
		//testfindbyteaid();
	}

	private static void testfindbyteaid() throws ApplicationException {
		CourseBean dto = new CourseBean();
		
		dto = model.findByTeaID(120);
		
		   // System.out.println(dto.getId());
			System.out.println("\t"+dto.getCourse_name());
			
		}
		

	
	private static void testmycourse() throws ApplicationException {
		CourseBean dto = new CourseBean();
		List list = new ArrayList();
		list = model.list(0, 0);
		
		Iterator it = list.iterator();
		while(it.hasNext()){
		    dto = 	(CourseBean) it.next();
		    System.out.println(dto.getId());
			System.out.println("\t"+dto.getCourse_name());
			System.out.println("\t"+dto.getCourse_duration());
			System.out.println("\t"+dto.getCourse_description());
		}
	}

	private static void testlist() throws ApplicationException {
	
		CourseBean dto = new CourseBean();
		List list = new ArrayList();
		list = model.list(0, 0);
		Iterator it = list.iterator();
		while(it.hasNext()){
		    dto = 	(CourseBean) it.next();
		    System.out.println(dto.getId());
			System.out.println("\t"+dto.getCourse_name());
			System.out.println("\t"+dto.getCourse_duration());
			System.out.println("\t"+dto.getCourse_description());
			System.out.println("\t"+dto.getCreatedby());
			System.out.println("\t"+dto.getModifiedby());
			System.out.println("\t"+dto.getCreateddatetime());
			System.out.println("\t"+dto.getModifieddatetime());
		
	}
		
	}

	private static void testadd() throws ApplicationException, DuplicateRecordException {
		CourseBean dto = new CourseBean();

		dto.setCourse_name(".net react");
		dto.setCourse_duration("1 months");
		dto.setCourse_description("Some quick example text to build on the card title and make up the bulk of the card's content.");
		dto.setCgroup_id(1l);
		dto.setImage("IMG-20210708-WA0000.jpg");
		dto.setTea_id("120");
		dto.setCreatedby("admin");
		dto.setModifiedby("admin");
		dto.setMeet_code("hddvjbjdbsdbkscb");
		dto.setCreateddatetime(new Timestamp(new Date().getTime()));
		dto.setModifieddatetime(new Timestamp(new Date().getTime()));
		
		model.add(dto);
		
		//Some quick example text to build on the card title and make up the bulk of the card's content.
	}

}
