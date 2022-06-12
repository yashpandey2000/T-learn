package in.co.tlearn.ctl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.log4j.Logger;

import in.co.tlearn.bean.BaseBean;
import in.co.tlearn.bean.CourseBean;
import in.co.tlearn.bean.TeacherBean;
import in.co.tlearn.bean.UserBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.DuplicateRecordException;
import in.co.tlearn.model.CourseModelInt;
import in.co.tlearn.model.ModelFactory;
import in.co.tlearn.util.DataUtility;
import in.co.tlearn.util.DataValidator;
import in.co.tlearn.util.PropertyReader;
import in.co.tlearn.util.ServletUtility;




/**
 * course functionality ctl is to perform add,delete ,update operation
 * @author Yash Pandey
 *
 */
@WebServlet(name = "CourseCtl", urlPatterns = { "/ctl/CourseCtl" })
@MultipartConfig(
		  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
		  maxFileSize = 1024 * 1024 * 10,      // 10 MB
		  maxRequestSize = 1024 * 1024 * 100   // 100 MB
		)

public class CourseCtl extends BaseCtl {
	private static final long serialVersionUID = 1L;

	private static final UserBean Userdto = null;
       
	private static Logger log = Logger.getLogger(CourseCtl.class);
	
  
	protected boolean validate(HttpServletRequest request){
		log.debug("validate start");
		boolean pass = true;
		
		if(DataValidator.isNull(request.getParameter("cname"))){
			request.setAttribute("cname", PropertyReader.getvalue("error.require","Course Name"));
			pass = false;
		}
		else if(!DataValidator.isName(request.getParameter("cname"))){
			request.setAttribute("cname", "Invalid Course Name ");
			pass = false;
		}
		
		if(DataValidator.isNull(request.getParameter("duration"))){
			request.setAttribute("duration", PropertyReader.getvalue("error.require", "Course Duration"));
			pass = false;
		}
		if(DataValidator.isNull(request.getParameter("desc"))){
			request.setAttribute("desc", PropertyReader.getvalue("error.require", "Course Description"));
			pass = false;
		}
		
		else if(!DataValidator.isName(request.getParameter("desc"))){
			request.setAttribute("desc", "Invalid Description");
			pass = false;
		}
		if(DataValidator.isNull(request.getParameter("meet"))){
			request.setAttribute("meet", PropertyReader.getvalue("error.require", "Meeting Code"));
			pass = false;
		}
		
		
		 log.debug("validate end");
		return pass;
		
	}
	
	
	protected BaseBean populateBean(HttpServletRequest request) {
		log.debug("course ctl populate bean start");
		CourseBean dto = new CourseBean();
		//TeacherBean dto1 = new TeacherBean();
		UserBean dto1 = new UserBean();
		dto.setId(DataUtility.getLong(request.getParameter("id")));
		dto.setCourse_name(DataUtility.getString(request.getParameter("cname")));
		dto.setCourse_description(DataUtility.getString(request.getParameter("desc")));
		dto.setCourse_duration(DataUtility.getString(request.getParameter("duration")));
		dto.setTea_name(DataUtility.getString(request.getParameter("tea")));
		dto.setMeet_code(DataUtility.getString(request.getParameter("meet")));
		//dto.setTea_id(DataUtility.getLong(request.getParameter("un")));
		populateDTO(dto,request);
		log.debug("course ctl populate bean end");
				
		return dto;

	}
	
	
	 /**
     * Display logic inside it
     */
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		log.debug("course ctl do get start");
		String op = DataUtility.getString(request.getParameter("operation"));
		long id = DataUtility.getLong(request.getParameter("id"));
		HttpSession session = request.getSession(true);
		UserBean userdto = (UserBean) session.getAttribute("user");
		CourseModelInt model = ModelFactory.getInstance().getCourseModel();
		if (id > 0 || op != null) {
			CourseBean dto;
			try {
				dto = model.findByPK(id);
				//dto.setTea_name(dto.getTea_name());
				dto.setTea_name(userdto.getFirstname()+" "+userdto.getLastname());
				ServletUtility.setDto(dto, request);
			} catch (Exception e) {
				e.printStackTrace();
				log.error(e);
				ServletUtility.handleException(e, request, response);
				return;
			}
		}
		ServletUtility.forward(getView(), request, response);
		log.debug("course ctl do get end");
	}
		
	
	 /*public void doPost1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 Part filePart = request.getPart("file");
		    String fileName = filePart.getSubmittedFileName();
		    for (Part part : request.getParts()) {
		      part.write("D:\\upload\\" + fileName);
		    }
		 
		 request.setAttribute("hm","file uploaded successfully !!");
		    ServletUtility.forward(ORSView.COURSE_VIEW, request, response);
	 }*/
	 /**
     * Submit logic inside it
     */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    
		log.debug("course ctl do post start");
		HttpSession session = request.getSession(true);
		UserBean userdto = (UserBean) session.getAttribute("user");
		String op = DataUtility.getString(request.getParameter("operation"));
		long id = DataUtility.getLong(request.getParameter("id"));
		CourseModelInt model =ModelFactory.getInstance().getCourseModel() ;
		
		    
		if (OP_SAVE.equalsIgnoreCase(op)||OP_UPDATE.equalsIgnoreCase(op)) {
			CourseBean dto=(CourseBean) populateBean(request);
			try {
				if (id > 0) {
				   try {
					   
					model.update(dto);
				} catch (DuplicateRecordException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				   dto.setId(id);
					ServletUtility.setSuccessMessage("Data Successfully Update", request);
					ServletUtility.setDto(dto, request);
				} else {
				
					try {
					
					
					dto.setTea_id(userdto.getTea_uniqueid());
					System.out.println(userdto.getTea_uniqueid()+"===================================,,,,,,,");
				    dto.setTea_name(userdto.getFirstname()+" "+userdto.getLastname());
				    
				  
				    
				    
					model.add(dto);
						 
						 //dto.setTea_name(userdto.getFirstname()+""+userdto.getLastname());
						ServletUtility.setSuccessMessage("Data Successfully saved", request);
						ServletUtility.setDto(dto, request);
					} catch (ApplicationException e) {
						log.error(e);
						ServletUtility.handleException(e, request, response);
						return;
					} catch (DuplicateRecordException e) {
						ServletUtility.setDto(dto, request);
						ServletUtility.setErrorMessage("course  already exists", request);
					}
				}
				
			} catch (ApplicationException e) {
				log.error(e);
				ServletUtility.handleException(e, request, response);
				return;
			} 
			
			
		}else if(OP_DELETE.equalsIgnoreCase(op)){
			CourseBean dto=(CourseBean) populateBean(request);
			try{
				model.delete(dto);
				ServletUtility.redirect(ORSView.COURSE_LIST_CTL, request, response);
				return;
			} catch (ApplicationException e) {
				log.error(e);
				ServletUtility.handleException(e, request, response);
				return;
			}
	}else if(OP_CANCEL.equalsIgnoreCase(op)){
		ServletUtility.redirect(ORSView.TEACHER_MY_COURSE_CTL, request, response);
		return;
		
	}else if(OP_RESET.equalsIgnoreCase(op)){
		ServletUtility.redirect(ORSView.COURSE_CTL, request, response);
		return;
		
	}
		ServletUtility.forward(getView(), request, response);

	log.debug("course ctl do post end");
		
		
	}

	@Override
	protected String getView() {
		// TODO Auto-generated method stub
		return ORSView.COURSE_VIEW;
	}

}
