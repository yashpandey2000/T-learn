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
import in.co.tlearn.bean.UserBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.exception.RecordNotFoundException;
import in.co.tlearn.model.ModelFactory;
import in.co.tlearn.model.UserModelInt;
import in.co.tlearn.util.DataUtility;
import in.co.tlearn.util.DataValidator;
import in.co.tlearn.util.PropertyReader;
import in.co.tlearn.util.ServletUtility;

/**
 * change password operation functionality perform
 * @author Yash Pandey
 *
 */
@WebServlet(name="ChangePasswordCtl",urlPatterns={"/ctl/ChangePasswordCtl"})

public class ChangePasswordCtl extends BaseCtl {
	private static final long serialVersionUID = 1L;
       
	private static Logger log = Logger.getLogger(ChangePasswordCtl.class);
	   public static final String OP_CHANGE_MY_PROFILE = "Change My Profile";
		
    
	   protected boolean validate(HttpServletRequest request){
		   log.debug("validate start");
		
		   boolean pass = true;
		   
		   
		   String op = DataUtility.getString(request.getParameter("operation"));
		   
		   String pass1 = request.getParameter("newpassword");
		   
		   if(OP_CHANGE_MY_PROFILE.equalsIgnoreCase(op)){
			   
			 
			   return pass;
		   }
		   
		   
		   
		  if(DataValidator.isNull(request.getParameter("oldpassword"))) {
			  request.setAttribute("oldpassword", PropertyReader.getvalue("error.require","Old Password"));
			  pass = false;
		  }
		   
		  else if(!DataValidator.isPassword(pass1)){
			  request.setAttribute("oldpassword", PropertyReader.getvalue("error.password","Invalid"));
			  pass = false;
		  } 
		  
		  
		 if(DataValidator.isNull(request.getParameter("newpassword"))){
			 request.setAttribute("newpassword",PropertyReader.getvalue("error.require", "New Password") );
			pass = false; 
		 }  
		   
		 else if(!DataValidator.isPassword(pass1)){
			 request.setAttribute("newpassword",PropertyReader.getvalue("error.password", "Invalid") );
		    pass =false;
		 } 
		 
		 else  if(request.getParameter("oldpassword").equals(request.getParameter("newpassword"))){
			  request.setAttribute("newpassword", "Old and New password should be different");
			  pass = false;
		  }
		   
		  if(DataValidator.isNull(request.getParameter("confirmpassword"))){
			  request.setAttribute("confirmpassword", PropertyReader.getvalue("error.require", "Confirm Password"));
			 pass = false; 
		  } 
		   
		  else if(!request.getParameter("newpassword").equals(request.getParameter("confirmpassword")) && !"".equals(request.getParameter("confirmpassword"))){
			  request.setAttribute("confirmpassword", "new and confirm password should be same");
			  pass = false;
		  }  
		  
		  log.debug("validate end");
		   return pass;
		   
	   }
	   
	   
	   protected BaseBean populateBean(HttpServletRequest request){
			
		   
		   UserBean dto = new UserBean();
		   dto.setPassword(DataUtility.getString(request.getParameter("oldpassword")));
		   dto.setConfirmpassword(DataUtility.getString(request.getParameter("confirmpassword")));
		   
		   populateDTO(dto , request);
		   
		  
		   return dto;
		   
	   }
	   
	   
	   /**
	     * Display Logics inside this method
	     */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletUtility.forward(getView(), request, response);	
		
	}

	
	 /**
     * Submit logic inside it
     */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		log.debug("change password do post start");
		String op=DataUtility.getString(request.getParameter("operation"));
		UserModelInt model=ModelFactory.getInstance().getUserModel();
		
		UserBean Userbean=(UserBean)session.getAttribute("user");
		String newPassword=request.getParameter("newpassword");
		String oldPassword=request.getParameter("oldpassword");
		long id=Userbean.getId();
		System.out.println("do post id..."+id+"...."+Userbean.getPassword()+";;;;;;;;;"+Userbean.getId()+"....."+newPassword+"...."+oldPassword);
		if(OP_SAVE.equalsIgnoreCase(op)){
			try{
				boolean flag=model.changePassword(id,newPassword,oldPassword);
			if(flag==true)	{
				model.findByLogin(Userbean.getEmailid());
				System.out.println(Userbean.getEmailid()+"==========================================");
				ServletUtility.setSuccessMessage("Password has been change successfully", request);
			}
			}catch (ApplicationException e) {
                log.error(e);
                ServletUtility.handleException(e, request, response);
                return;

            } catch (RecordNotFoundException e) {
                ServletUtility.setErrorMessage("Old PassWord is Invalid",
                        request);
            }
			
		}  else if (OP_CHANGE_MY_PROFILE.equalsIgnoreCase(op)) {
            ServletUtility.redirect(ORSView.MY_PROFILE_CTL, request, response);
            return;
        }

        ServletUtility.forward(ORSView.CHANGE_PASSWORD_VIEW, request, response);
        log.debug("ChangePasswordCtl Method doGet Ended");
		
	}


	@Override
	protected String getView() {
		// TODO Auto-generated method stub
		return ORSView.CHANGE_PASSWORD_VIEW;
	}

}
