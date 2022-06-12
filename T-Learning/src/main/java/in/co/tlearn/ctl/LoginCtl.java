package in.co.tlearn.ctl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import in.co.tlearn.bean.BaseBean;
import in.co.tlearn.bean.RoleBean;
import in.co.tlearn.bean.UserBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.model.ModelFactory;
import in.co.tlearn.model.RoleModelInt;
import in.co.tlearn.model.UserModelInt;
import in.co.tlearn.util.DataUtility;
import in.co.tlearn.util.DataValidator;
import in.co.tlearn.util.PropertyReader;
import in.co.tlearn.util.ServletUtility;


/**
 * login functionality controller. perform login operation
 * @author Yash Pandey
 *
 */
@WebServlet(name = "LoginCtl", urlPatterns = { "/LoginCtl" })

public class LoginCtl extends BaseCtl {
	private static final long serialVersionUID = 1L;
	
	public static final String OP_REGISTER = "Register";
	public static final String OP_SIGN_IN = "SignIn";
	public static final String OP_SIGN_UP = "SignUp";
	public static final String OP_LOG_OUT = "logout";
	private static Logger log = Logger.getLogger(LoginCtl.class);
	
	
	
	protected boolean validate(HttpServletRequest request) {
		//log.debug("validate start");

		boolean pass = true;

		String op = request.getParameter("operation");
		if (OP_SIGN_UP.equals(op) || OP_LOG_OUT.equals(op)) {
			return pass;
		}

		if (DataValidator.isNull(request.getParameter("loginid"))) {
			request.setAttribute("loginid", PropertyReader.getvalue("error.require", "Loginid"));
			pass = false;

		} else if (!DataValidator.isEmail(request.getParameter("loginid"))) {
			request.setAttribute("loginid", PropertyReader.getvalue("error.email", "Invalid"));
			pass = false;
		}

		if (DataValidator.isNull(request.getParameter("password"))) {

			request.setAttribute("password", PropertyReader.getvalue("error.require", "Password"));
			pass = false;
		}

		else if (!DataValidator.isPassword(request.getParameter("password"))) {

			request.setAttribute("password", PropertyReader.getvalue("error.password", "Invalid"));
			pass = false;
		}
		 log.debug("validate end");
		return pass;

	}
       
	
	protected BaseBean populateBean(HttpServletRequest request) {
		UserBean dto = new UserBean();
		
		dto.setId(DataUtility.getLong(request.getParameter("id")));
		dto.setEmailid(DataUtility.getString(request.getParameter("loginid")));
		dto.setPassword(DataUtility.getString(request.getParameter("password")));
		
		return dto;

	}
   
	
	/**
	 *Display logic inside it
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String op = request.getParameter("operation");
		UserModelInt model = ModelFactory.getInstance().getUserModel();
		RoleModelInt model1 = ModelFactory.getInstance().getRoleModel();
		HttpSession session = request.getSession(true);
		long id = DataUtility.getLong(request.getParameter("id"));
		if (OP_LOG_OUT.equals(op)) {
			session = request.getSession();
			System.out.println("log out button");
			session.invalidate();
			//session.setMaxInactiveInterval(10*60);
			ServletUtility.setSuccessMessage("LogOut Successfully", request);
			ServletUtility.forward(ORSView.LOGIN_VIEW, request, response);
			return;
		}
		if (id > 0) {
			UserBean dto;
			try {
				dto = model.findByPK(id);
				ServletUtility.setDto(dto, request);
			} catch (ApplicationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				ServletUtility.handleException(e, request, response);
				return;
			}

		}
		ServletUtility.forward(getView(), request, response);

		
		
	}

	/**
	 * Submit logic inside it
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String op = request.getParameter("operation");
		
		HttpSession session = request.getSession(true);
		UserModelInt userModel = ModelFactory.getInstance().getUserModel();
		RoleModelInt model1 = ModelFactory.getInstance().getRoleModel();
		long id = DataUtility.getLong(request.getParameter("id"));
		if (OP_SIGN_IN.equalsIgnoreCase(op)) {
			UserBean dto = (UserBean) populateBean(request);
			try {
				
				dto = userModel.authenticate(dto.getEmailid(), dto.getPassword());
				System.out.println(dto + "absaddsdfds");
				if (dto != null) {
					session.setAttribute("user", dto);
					long roleId = dto.getRoleid();
					RoleBean rdto = model1.findByPK(roleId);
					if (rdto != null) {
						session.setAttribute("role", rdto.getName());
					}
					String uri = (String) request.getParameter("uri");
					System.out.println("><>>>>" + uri);
					if (uri == null || "null".equalsIgnoreCase(uri)) {
						ServletUtility.redirect(ORSView.MAIN_CTL, request, response);
						return;
					} else {
						System.out.println();
						if (rdto.getId() == 1) {
							ServletUtility.redirect(uri, request, response);
						} else {
							ServletUtility.redirect(ORSView.MAIN_CTL, request, response);
						}

						return;
					}

				} else {
					dto = (UserBean) populateBean(request);
					ServletUtility.setDto(dto, request);
					ServletUtility.setErrorMessage("Invalid LoginId And Password", request);
				}

			} catch (ApplicationException e) {
				log.error(e);
				ServletUtility.handleException(e, request, response);
				return;
			}

		} else if (OP_SIGN_UP.equalsIgnoreCase(op)) {

			ServletUtility.redirect(ORSView.TEACHER_AND_STUDENT_CTL, request, response);
			return;

		}

		ServletUtility.forward(getView(), request, response);

		
	}

	@Override
	protected String getView() {
		// TODO Auto-generated method stub
		return ORSView.LOGIN_VIEW;
	}

}
