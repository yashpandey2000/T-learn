package in.co.tlearn.ctl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
 * 
 * forget password ctl.To perform password send in email
 * @author Yash Pandey
 *
 */
@WebServlet(name="ForgetPasswordCtl",urlPatterns={"/ForgetPasswordCtl"})

public class ForgetPasswordCtl extends BaseCtl {
	private static final long serialVersionUID = 1L;
	
	private static Logger log = Logger.getLogger(ForgetPasswordCtl.class);
	
	protected boolean validate(HttpServletRequest request) {
		boolean pass = true;
		if (DataValidator.isNull(request.getParameter("login"))) {
			request.setAttribute("login", PropertyReader.getvalue("error.require", "Email Id"));
			pass = false;
		} else if (!DataValidator.isEmail(request.getParameter("login"))) {
			request.setAttribute("login", PropertyReader.getvalue("error.email", "Invalid"));
			pass = false;
		}
		return pass;

	}
	
	protected BaseBean populateBean(HttpServletRequest request){
		
		UserBean dto = new UserBean();
		
		dto.setEmailid(DataUtility.getString(request.getParameter("login")));
		
		return dto;
		}
       
   
	/**
	 * Display logic inside it
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		log.debug("do get method started");
		
		ServletUtility.forward(getView(), request, response);
		
		
	}


	
	/**
	 * Submit logic inside it
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		log.debug("do get method started");
		String op = request.getParameter("operation");
		UserModelInt userModel = ModelFactory.getInstance().getUserModel();
		UserBean dto = (UserBean) populateBean(request);
		if (OP_GO.equalsIgnoreCase(op)) {
			try {
				//System.out.println("forget password......"+dto.getLoginid()+";;;"+userModel);
				boolean flag=userModel.forgetPassword(dto.getEmailid());
				System.out.println("in post method"+flag);
				
				ServletUtility.setSuccessMessage("password has been send to your Email Id", request);
			} catch (RecordNotFoundException e) {
				ServletUtility.setErrorMessage(e.getMessage(), request);
				log.error(e);
			} catch (ApplicationException e) {
				log.error(e);
				ServletUtility.handleException(e, request, response);
				return;
			}
			ServletUtility.setDto(dto, request);
			ServletUtility.forward(getView(), request, response);
		}
		
		
	}

	@Override
	protected String getView() {
		// TODO Auto-generated method stub
		return ORSView.FORGET_PASSWORD_VIEW;
	}

}
