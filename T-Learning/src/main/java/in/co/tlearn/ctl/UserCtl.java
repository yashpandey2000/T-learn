package in.co.tlearn.ctl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.co.tlearn.bean.BaseBean;
import in.co.tlearn.bean.UserBean;
import in.co.tlearn.model.ModelFactory;
import in.co.tlearn.model.RoleModelInt;
import in.co.tlearn.model.UserModelInt;
import in.co.tlearn.util.DataUtility;
import in.co.tlearn.util.DataValidator;
import in.co.tlearn.util.PropertyReader;
import in.co.tlearn.util.ServletUtility;

@WebServlet(name = "UserCtl", urlPatterns = { "/ctl/UserCtl" })
public class UserCtl extends BaseCtl {
	private static final long serialVersionUID = 1L;
    
	//private static Logger log = Logger.getLogger(UserCtl.class);
	
	protected void preload(HttpServletRequest request) {
		RoleModelInt model = ModelFactory.getInstance().getRoleModel();
		try {
			List list = model.list();
			request.setAttribute("roleList", list);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	
	protected boolean validate(HttpServletRequest request){
		//log.debug("validate start");
		boolean pass =true;
		
		long id = DataUtility.getInt(request.getParameter("id"));
		System.out.println("1"+id);
		if(DataValidator.isNull(request.getParameter("firstname"))){
			request.setAttribute("firstname", PropertyReader.getvalue("error.require", "First Name"));
		pass=false;
		System.out.println("2");
		}
		
		else if(!DataValidator.isName(request.getParameter("firstname"))){
			request.setAttribute("firstname", "Invalid First Name");
			pass = false;
			System.out.println("2");
		}
		
		if(DataValidator.isNull(request.getParameter("lastname"))){
			request.setAttribute("lastname", PropertyReader.getvalue("error.require","Last Name"));
			pass=false;
			System.out.println("3");
		}
		else if(!DataValidator.isName(request.getParameter("lastname"))){
			request.setAttribute("lastname", "Invalid Last Name");
			pass=false;
			System.out.println("4");
		}
		
		if(DataValidator.isNull(request.getParameter("loginid"))){
			request.setAttribute("loginid", PropertyReader.getvalue("error.require","Loginid"));
			pass = false;
			System.out.println("5");
		}
		
		else if(!DataValidator.isEmail(request.getParameter("loginid"))){
			request.setAttribute("loginid",PropertyReader.getvalue("error.email","Invalid" ) );
			pass = false;
			System.out.println("6");
		}
		
		if(DataValidator.isNull(request.getParameter("password"))){
			request.setAttribute("password", PropertyReader.getvalue("error.require", "Password"));
			pass = false;
			System.out.println("7");
		}
		else if(!DataValidator.isPassword(request.getParameter("password"))){
			request.setAttribute("password",PropertyReader.getvalue("error.password", "Invalid "));
			pass=false;
			System.out.println("8");
		}if(id==0){
			if(DataValidator.isNull(request.getParameter("confirmpassword"))){
				System.out.println(request.getParameter("confirmpassword")+"-----------------------");
				request.setAttribute("confirmpassword", PropertyReader.getvalue("error.require", "Confirm Password"));
				pass = false;
				System.out.println("---->>>>confirmpass");
			}
		}
		
		
//		if(DataValidator.isNull(request.getParameter("address"))){
//			request.setAttribute("address",PropertyReader.getvalue("error.require", "Address") );
//			pass= false;
//		}
		
		/*else if(!DataValidator.isAddress(request.getParameter("address"))){
			request.setAttribute("address", "Invalid Address");
			pass=false;
		}*/
		
		if(DataValidator.isNull(request.getParameter("gender"))){
			request.setAttribute("gender", PropertyReader.getvalue("error.require", "Gender"));
			pass= false;
			System.out.println("9 error");
		}
		
		if(DataValidator.isNull(request.getParameter("dob"))){
			request.setAttribute("dob",PropertyReader.getvalue("error.require", "DOB"));
			pass = false;
			System.out.println("10");
		}
		else if(!DataValidator.isDate(request.getParameter("dob"))){
			request.setAttribute("dob", PropertyReader.getvalue("error.date","DOB"));
			pass= false;System.out.println("11");
			
			
		}
		else if(!DataValidator.isValidAge(request.getParameter("dob"))){
			request.setAttribute("dob", PropertyReader.getvalue("error.date", "DOB"));
			pass = false;
			System.out.println("12");
		}
		if(id==0){
			if(!request.getParameter("password").equals(request.getParameter("confirmpassword")) && !"".equals(request.getParameter("confirmpassword"))){
				request.setAttribute("confirmpassword", "CnfrmPass & Password should be match");
				pass = false;
				System.out.println("13");
			}
		}
		
		
		
		if(DataValidator.isNull(request.getParameter("mobile"))){
			request.setAttribute("mobile", PropertyReader.getvalue("error.require", "Mobile No"));
			pass = false;
			System.out.println("14");
		}
		else if(!DataValidator.isMobileNo(request.getParameter("mobile"))){
			request.setAttribute("mobile", PropertyReader.getvalue("error.mobile", "Invalid"));
			pass= false;
			System.out.println("15");
		}
		
		if(DataValidator.isNull(request.getParameter("roleid"))){
			request.setAttribute("roleid", PropertyReader.getvalue("error.require", "Roll Name"));
			pass = false;
			System.out.println("16");
		}
		
	//	log.debug("validate end");
		return pass;
		
	}
	
	protected BaseBean populateBean(HttpServletRequest request){
		UserBean dto = new UserBean();
		
          
   
		dto.setId(DataUtility.getLong(request.getParameter("id")));

		dto.setRoleid(DataUtility.getLong(request.getParameter("roleid")));
		dto.setDob(DataUtility.getDate(request.getParameter("dob")));
		dto.setFirstname(DataUtility.getString(request.getParameter("firstname")));

		dto.setLastname(DataUtility.getString(request.getParameter("lastname")));

		dto.setEmailid(DataUtility.getString(request.getParameter("loginid")));

		dto.setPassword(DataUtility.getString(request.getParameter("password")));

		dto.setConfirmpassword(DataUtility.getString(request.getParameter("confirmpassword")));

		dto.setGender(DataUtility.getString(request.getParameter("gender")));
		dto.setMobileno(DataUtility.getString(request.getParameter("mobile")));
		
		//dto.setTea_uniqueid(DataUtility.getString(request.getParameter("un")));
        
		populateDTO(dto,request);
		
		 System.out.println(request.getParameter("dob")+"......."+dto.getDob());
		//log.debug("UserRegistrationCtl Method populatedto Ended");

		return dto;

	}
	
	
	/**
	 * Display logic inside it
	 */

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//log.debug("UserCtl Method doGet Started");
		String op = DataUtility.getString(request.getParameter("operation"));
		// get model
		UserModelInt model = ModelFactory.getInstance().getUserModel();
		long id = DataUtility.getLong(request.getParameter("id"));
		if (id > 0 || op != null) {
			System.out.println("in id > 0  condition");
			UserBean dto;
			try {
				dto = model.findByPK(id);
				ServletUtility.setDto(dto, request);
			} catch (Exception e) {
				e.printStackTrace();
				//log.error(e);
				ServletUtility.handleException(e, request, response);
				return;
			}
		}
		ServletUtility.forward(getView(), request, response);
		
	}


	@Override
	protected String getView() {
		// TODO Auto-generated method stub
		return ORSView.LOGIN_VIEW;
	}
}
