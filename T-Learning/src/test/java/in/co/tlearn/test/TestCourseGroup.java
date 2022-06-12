package in.co.tlearn.test;

import java.sql.Timestamp;
import java.util.Date;

import in.co.tlearn.bean.CourseGroupBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.DuplicateRecordException;
import in.co.tlearn.model.CourseGroupModelHibImp;
import in.co.tlearn.model.CourseGroupModelInt;

public class TestCourseGroup {

	public static CourseGroupModelInt model = new CourseGroupModelHibImp()  ;
	public static void main(String[] args) throws ApplicationException, DuplicateRecordException {
		
		
		testadd();
				//testupdate();
				//testdelete();
		
		
		
	}
	
	
	private static void testadd() throws ApplicationException, DuplicateRecordException {

		
			CourseGroupBean dto = new CourseGroupBean();

			dto.setCourse_group_name("BTIT101");
			dto.setCourse_group_description("1 months");
			dto.setCreatedby("admin");
			dto.setModifiedby("admin");
			dto.setCreateddatetime(new Timestamp(new Date().getTime()));
			dto.setModifieddatetime(new Timestamp(new Date().getTime()));
			
			model.add(dto);
			
			//Some quick example text to build on the card title and make up the bulk of the card's content.
		}
		
}
