package in.co.tlearn.ctl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import in.co.tlearn.bean.BaseBean;
import in.co.tlearn.bean.RoleBean;
import in.co.tlearn.bean.UserBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.DuplicateRecordException;
import in.co.tlearn.model.ModelFactory;
import in.co.tlearn.model.UserModelInt;
import in.co.tlearn.util.DataUtility;
import in.co.tlearn.util.DataValidator;
import in.co.tlearn.util.PropertyReader;
import in.co.tlearn.util.ServletUtility;






/**
 *  Myprofile functionality controller.to perform update profile operation and
 * show profile
 * @author Yash Pandey
 *
 */
@WebServlet(name = "MyProfileCtl", urlPatterns = { "/ctl/MyProfileCtl" })
public class MyProfileCtl extends BaseCtl {
	private static final long serialVersionUID = 1L;
	private static Logger log = Logger.getLogger(MyProfileCtl.class);
	public static final String OP_CHANGE_MY_PASWORD = "ChangePassword";
   
	
	protected boolean validate(HttpServletRequest request){
		   log.debug("validate start");
		   boolean pass =true;
		   
		   
		   String op = DataUtility.getString(request.getParameter("operation"));
		   
		   if(OP_CHANGE_MY_PASWORD.equalsIgnoreCase(op) || op == null){
			   
			   return pass;
		   }
		   
//		   if(DataValidator.isNull(request.getParameter("emailid"))){
//			   request.setAttribute("emailid", PropertyReader.getvalue("error.require","Loginid"));
//			   pass = false;
//		   }
	   
//		   else if(!DataValidator.isEmail(request.getParameter("loginid"))){
//			   request.setAttribute("loginid", PropertyReader.getvalue("error.email", "Invalid"));
//		   pass = false;
//		   }
		   
		   
		   if(DataValidator.isNull(request.getParameter("firstname"))){
			   request.setAttribute("firstname", PropertyReader.getvalue("error.require", "First Name"));
			 pass = false;  
		   }
		   
		   else if(!DataValidator.isName(request.getParameter("firstname"))){
			   request.setAttribute("firstname", "Invalid  Name");
			   pass = false;
		   }
		   
		   if(DataValidator.isNull(request.getParameter("lastname"))){
			   request.setAttribute("lastname", PropertyReader.getvalue("error.require", "Last Name"));
			   pass = false;
		   }
		   else if(!DataValidator.isName(request.getParameter("lastname"))){
			   request.setAttribute("lastname", "Invalid  Name ");
			   pass= false;
		   }
		   if(DataValidator.isNull(request.getParameter("gender"))){
			   request.setAttribute("gender", PropertyReader.getvalue("error.require", "Gender"));
			   pass = false;
		   }
		   
		   if(DataValidator.isNull(request.getParameter("mobile"))){
			   request.setAttribute("mobile", PropertyReader.getvalue("error.require", "MobileNo"));
			   pass = false;
		   }
		   
		  else if( !DataValidator.isMobileNo(request.getParameter("mobile"))){
			   request.setAttribute("mobile", PropertyReader.getvalue("error.mobile", "Invalid"));
			  pass= false; 
		   }
		   
		if(DataValidator.isNull(request.getParameter("dob"))){
			request.setAttribute("dob", PropertyReader.getvalue("error.require", "DOB"));
			pass = false;
		}
		
		else if(!DataValidator.isValidAge(request.getParameter("dob"))){
			request.setAttribute("dob", PropertyReader.getvalue("error.date","Invalid" ));
			pass = false;
			
		}
		      
		log.debug("validate end");
		return pass;
		   
	   }
	
	
	protected BaseBean populateDTO(HttpServletRequest request) {
		log.debug("MyProfileCtl Method populatebean Started");

		UserBean dto = new UserBean();

		dto.setId(DataUtility.getLong(request.getParameter("id")));

		dto.setEmailid(DataUtility.getString(request.getParameter("emailid")));

		dto.setFirstname(DataUtility.getString(request.getParameter("firstname")));

		dto.setLastname(DataUtility.getString(request.getParameter("lastname")));

		dto.setMobileno(DataUtility.getString(request.getParameter("mobile")));

		dto.setGender(DataUtility.getString(request.getParameter("gender")));

		dto.setDob(DataUtility.getDate(request.getParameter("dob")));
		dto.setQualifications(DataUtility.getString(request.getParameter("qua")));
		dto.setTea_uniqueid(DataUtility.getString(request.getParameter("un")));
		dto.setInstitute(DataUtility.getString(request.getParameter("in")));
		populateDTO(dto,request);
		

		return dto;
	}
	
	
	
	/**
	 * Display logic inside it
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		log.debug("MyprofileCtl Method doGet Started");

		UserBean userdto = (UserBean) session.getAttribute("user");
		long id = userdto.getId();
		String op = DataUtility.getString(request.getParameter("operation"));

		// get model
		UserModelInt model =ModelFactory.getInstance().getUserModel() ;
		if (id > 0 || op != null) {
			System.out.println("in id > 0  condition");
			UserBean dto;
			try {
				dto = model.findByPK(id);
				System.out.println(dto.getId()+"================");
				System.out.println(dto.getMobileno()+"====================");
				ServletUtility.setDto(dto, request);
			} catch (ApplicationException e) {
				log.error(e);
				ServletUtility.handleException(e, request, response);
				return;
			}
		}
		
		ServletUtility.forward(getView(), request, response);

		log.debug("MyProfileCtl Method doGet Ended");
		
	}

	/**
	 * Submit logic inside it
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		log.debug("MyprofileCtl Method doPost Started");

		UserBean Userdto = (UserBean) session.getAttribute("user");
		long id = Userdto.getId();
		String op = DataUtility.getString(request.getParameter("operation"));
        RoleBean bean = new RoleBean();
		// get model
		UserModelInt model = ModelFactory.getInstance().getUserModel();

		if (OP_SAVE.equalsIgnoreCase(op)) {
			UserBean dto = (UserBean) populateDTO(request);
			try {
				if (id > 0) {
					Userdto.setFirstname(dto.getFirstname());
					Userdto.setLastname(dto.getLastname());
					Userdto.setGender(dto.getGender());
					//System.out.println(dto.getGender());
					Userdto.setMobileno(dto.getMobileno());
					Userdto.setDob(dto.getDob());
					/*if(Userdto.getRoleid()==3){
				     Userdto.setTea_uniqueid(dto.getTea_uniqueid());
				     Userdto.setQualifications(dto.getQualifications());
					}else{
						Userdto.setInstitute(dto.getInstitute());
					}*/
					model.update(Userdto);

				}
				ServletUtility.setDto(dto, request);
				ServletUtility.setSuccessMessage("Profile has been updated Successfully. ", request);
			} catch (ApplicationException e) {
				log.error(e);
				ServletUtility.handleException(e, request, response);
				return;
			} catch (DuplicateRecordException e) {
				ServletUtility.setDto(dto, request);
				ServletUtility.setErrorMessage("Login id already exists", request);
			}
		} else if (OP_CHANGE_MY_PASWORD.equalsIgnoreCase(op)) {

			ServletUtility.redirect(ORSView.CHANGE_PASSWORD_CTL, request, response);
			return;

		}

		ServletUtility.forward(getView(), request, response);

		log.debug("MyProfileCtl Method doPost Ended");
		
		
	}

	@Override
	protected String getView() {
		// TODO Auto-generated method stub
		return ORSView.MY_PROFILE_VIEW;
	}

}
