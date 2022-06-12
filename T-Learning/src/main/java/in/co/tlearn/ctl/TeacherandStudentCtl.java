package in.co.tlearn.ctl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.co.tlearn.util.ServletUtility;

@WebServlet(name = "TeacherandStudentCtl", urlPatterns = { "/TeacherandStudentCtl" })

public class TeacherandStudentCtl extends BaseCtl {
	public static final String OP_SIGN_UP = "SignUp";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//log.debug("WelcomeCtl Method doGet Started");
		
		ServletUtility.forward(getView(), request, response);
		
		//log.debug("WelcomeCtl Method doGet Ended");

	}
	
	
	@Override
	protected String getView() {
		// TODO Auto-generated method stub
		return ORSView.TEACHER_AND_STUDENT_VIEW;
	
	}
}