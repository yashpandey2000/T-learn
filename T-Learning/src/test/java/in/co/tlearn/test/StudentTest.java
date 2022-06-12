package in.co.tlearn.test;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import in.co.tlearn.bean.StudentBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.DuplicateRecordException;
import in.co.tlearn.model.StudentModelHibImp;
import in.co.tlearn.model.StudentModelInt;


public class StudentTest {
	
	public static StudentModelInt model = new StudentModelHibImp();
	public static void main(String[] args) throws ApplicationException, DuplicateRecordException {
		testadd();
		//testdelete();
		//testupdate();
		//testfindbypk();
		//testfindbyemailid();
		//testsearch();
		//testlist();
	}
	
	private static void testlist() throws ApplicationException {
		StudentBean dto=new StudentBean();   
        List list = new ArrayList();
        list = model.list(0,0);
        if (list.size() < 0) {
            System.out.println("Test list fail");
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            dto = (StudentBean) it.next();
            System.out.println(dto.getId());
    		System.out.println(dto.getFirstname());
    		System.out.println(dto.getLastname());
    		System.out.println(dto.getDob());
    		System.out.println(dto.getMobileno());
    		System.out.println(dto.getEmailid());
    		//System.out.println(dto.getCollegeid());
    		//System.out.println(dto.getCollegename());
    		System.out.println(dto.getCreatedby());
    		System.out.println(dto.getModifiedby());
    		System.out.println(dto.getCreateddatetime());
    		System.out.println(dto.getModifieddatetime());
        }
           
	}

	private static void testsearch() throws ApplicationException {
		StudentBean dto=new StudentBean();
		
		ArrayList<StudentBean> a = (ArrayList<StudentBean>) model.search(dto);
		for (StudentBean uu : a) {

			System.out.println(uu.getId() + "\t" + uu.getFirstname() + "\t" + uu.getLastname() + "\t" + uu.getDob()
					+ "\t" + uu.getEmailid() + "\t" + uu.getMobileno() );}
		
	}

	private static void testfindbyemailid() throws ApplicationException {
		StudentBean dto = model.findByEmailId("aaa@gmail.com");
		System.out.println(dto.getId());
		System.out.println(dto.getFirstname());
		System.out.println(dto.getLastname());
		System.out.println(dto.getDob());
		System.out.println(dto.getMobileno());
		System.out.println(dto.getEmailid());
		//System.out.println(dto.getCollegeid());
		//System.out.println(dto.getCollegename());
		System.out.println(dto.getCreatedby());
		System.out.println(dto.getModifiedby());
		System.out.println(dto.getCreateddatetime());
		System.out.println(dto.getModifieddatetime());
		
		
	}

	private static void testfindbypk() throws ApplicationException {
		StudentBean dto = model.findByPK(2l);
		
		System.out.println(dto.getId());
		System.out.println(dto.getFirstname());
		System.out.println(dto.getLastname());
		System.out.println(dto.getDob());
		System.out.println(dto.getMobileno());
		System.out.println(dto.getEmailid());
		//System.out.println(dto.getCollegeid());
	//	System.out.println(dto.getCollegename());
		System.out.println(dto.getCreatedby());
		System.out.println(dto.getModifiedby());
		System.out.println(dto.getCreateddatetime());
		System.out.println(dto.getModifieddatetime());
		
		
	}

	private static void testupdate() throws ApplicationException, DuplicateRecordException {
		
		StudentBean dto = new StudentBean();
		
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		try{
		dto.setId(1l);
		dto.setFirstname("naveen");
		 dto.setLastname("dixit");
	        dto.setDob(sdf.parse("1/11/2000"));
	        dto.setMobileno("8542212554");
	        dto.setEmailid("dixit@hg.com");
	      //  dto.setCollegeid(3L);
	        dto.setCreatedby("Admin");
			dto.setModifiedby("Admin");
			dto.setCreateddatetime(new Timestamp(new Date().getTime()));
			dto.setModifieddatetime(new Timestamp(new Date().getTime()));
			
			model.update(dto);
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

	private static void testdelete() throws ApplicationException {
		
		StudentBean dto = new StudentBean();
		dto.setId(1l);
		model.delete(dto);
		
	}
	
	private static void testadd() {
		StudentBean dto = new StudentBean();
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		try{
		dto.setId(1L);
		dto.setFirstname("sunil");
		dto.setLastname("sharma");
		dto.setDoj(sdf.parse("12/04/22"));
		dto.setMobileno("9406626266");
		dto.setEmailid("hell@gmail.com");
		dto.setCourse_id(8l);
		//dto.setCollegeid(2);
		dto.setCreatedby("Admin");
		dto.setModifiedby("Admin");
		dto.setCreateddatetime(new Timestamp(new Date().getTime()));
		dto.setModifieddatetime(new Timestamp(new Date().getTime()));
		 model.add(dto);
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
