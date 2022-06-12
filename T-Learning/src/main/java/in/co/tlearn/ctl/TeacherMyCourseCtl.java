package in.co.tlearn.ctl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import in.co.tlearn.bean.BaseBean;
import in.co.tlearn.bean.CourseBean;
import in.co.tlearn.bean.TeacherBean;
import in.co.tlearn.bean.UserBean;
import in.co.tlearn.exception.ApplicationException;
import in.co.tlearn.model.CourseModelInt;
import in.co.tlearn.model.ModelFactory;
import in.co.tlearn.model.TeacherModelInt;
import in.co.tlearn.util.DataUtility;
import in.co.tlearn.util.PropertyReader;
import in.co.tlearn.util.ServletUtility;




/**
 *  Faculty list ctl is to perform search and show list operation
 * @author Yash Pandey
 *
 */
@WebServlet(name ="TeacherMyCourseCtl", urlPatterns = { "/ctl/TeacherMyCourseCtl" })

public class TeacherMyCourseCtl extends BaseCtl {
	private static final long serialVersionUID = 1L;
	
	private static Logger log = Logger.getLogger(TeacherMyCourseCtl.class);
	
	protected void preload(HttpServletRequest request) {
		//CollegeModelInt model=ModelFactory.getInstance().getCollegeModel();
		CourseModelInt model1=ModelFactory.getInstance().getCourseModel();
		try {
			
			List list1=model1.list();
			
			request.setAttribute("courseList", list1);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	
	
	
	protected BaseBean populateBean(HttpServletRequest request) {

		
			CourseBean dto = new CourseBean();
			dto.setId(DataUtility.getLong(request.getParameter("course")));
			dto.setCourse_description(DataUtility.getString(request.getParameter("description")));
			dto.setCourse_duration(DataUtility.getString(request.getParameter("duration")));
			populateDTO(dto,request);
			return dto;

	}
       
	/**
	 * Display logic inside it
	 */
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(true);
		UserBean userdto = (UserBean) session.getAttribute("user");
		
		List list=null;
		List next=null;
		int pageNo = 1;
		int pageSize = DataUtility.getInt(PropertyReader.getvalue("page.size"));
		CourseBean dto = (CourseBean) populateBean(request);
		CourseModelInt model = ModelFactory.getInstance().getCourseModel();
		
		try {
			list = model.search(dto, pageNo, pageSize);
			ServletUtility.setDto(dto, request);
			
			if(userdto.getTea_uniqueid()==userdto.getEmailid()){
			ServletUtility.setList(list, request);
			}
			//System.out.println("<>>><<<>>>>+"+list);
			next = model.search(dto, pageNo + 1, pageSize);
			if (list == null || list.size() == 0) {
				ServletUtility.setErrorMessage("No record found", request);
			}
			if (next == null || next.size() == 0) {
				request.setAttribute("nextListSize", "0");
			} else {
				request.setAttribute("nextListSize", next.size());
			}

			
			ServletUtility.setList(list, request);
			ServletUtility.setPageNo(pageNo, request);
			ServletUtility.setPageSize(pageSize, request);
			ServletUtility.forward(getView(), request, response);
		} catch (ApplicationException e) {
			log.error(e);
			ServletUtility.handleException(e, request, response);
			return;

		} catch (Exception e) {
			e.printStackTrace();
		}

		log.debug("Course ctl do get end");
		
	}

	/**
	 * Submit logic inside it
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		log.debug("Course List do post start");
		List list=null;
		List next=null;
		int pageNo = DataUtility.getInt(request.getParameter("pageNo"));
		int pageSize = DataUtility.getInt(request.getParameter("pageSize"));

		pageNo = (pageNo == 0) ? 1 : pageNo;
		pageSize = (pageSize == 0) ? DataUtility.getInt(PropertyReader.getvalue("page.size")) : pageSize;
		CourseBean dto = (CourseBean) populateBean(request);
		String op = DataUtility.getString(request.getParameter("operation"));
		String[] ids = request.getParameterValues("ids");
		CourseModelInt model =ModelFactory.getInstance().getCourseModel();
		
		HttpSession session = request.getSession(true);
		UserBean userdto = (UserBean) session.getAttribute("user");
		
		try {
			if (userdto.getTea_uniqueid()==userdto.getEmailid() && OP_SEARCH.equalsIgnoreCase(op) || "Next".equalsIgnoreCase(op) || "Previous".equalsIgnoreCase(op)) {

				if (OP_SEARCH.equalsIgnoreCase(op)) {
					pageNo = 1;
				} else if (OP_NEXT.equalsIgnoreCase(op)) {
					pageNo++;
				} else if (OP_PREVIOUS.equalsIgnoreCase(op) && pageNo > 1) {
					pageNo--;
				}
			} else if (OP_NEW.equalsIgnoreCase(op)) {
				ServletUtility.redirect(ORSView.COURSE_CTL, request, response);
				return;
			} else if (OP_RESET.equalsIgnoreCase(op)) {

				ServletUtility.redirect(ORSView.TEACHER_MY_COURSE_CTL, request, response);
				return;
			} else if (OP_BACK.equalsIgnoreCase(op)) {
				ServletUtility.redirect(ORSView.TEACHER_MY_COURSE_CTL, request, response);
				return;
			} else if (OP_DELETE.equalsIgnoreCase(op)) {
				pageNo = 1;
				if (ids != null && ids.length > 0) {
					CourseBean deletebean = new CourseBean();
					for (String id : ids) {
						deletebean.setId(DataUtility.getLong(id));
						model.delete(deletebean);
						ServletUtility.setSuccessMessage("Data Delete Successfully", request);
					}

				} else {
					ServletUtility.setErrorMessage("Select atleast one record", request);
				}
			}
			dto = (CourseBean) populateBean(request);
			list = model.search(dto, pageNo, pageSize);
			ServletUtility.setDto(dto, request);
			 next = model.search(dto, pageNo + 1, pageSize);
			 ServletUtility.setList(list, request);
			if (list == null || list.size() == 0&&!OP_DELETE.equalsIgnoreCase(op)) {
				ServletUtility.setErrorMessage("No record found", request);
			}
			if (next == null || next.size() == 0) {
				request.setAttribute("nextListSize", "0");
			} else {
				request.setAttribute("nextListSize", next.size());
			}
			
			if(userdto.getTea_uniqueid()==userdto.getEmailid()){
			ServletUtility.setList(list, request);
			}
			ServletUtility.setPageNo(pageNo, request);
			ServletUtility.setPageSize(pageSize, request);
			ServletUtility.forward(getView(), request, response);
		} catch (ApplicationException e) {
			log.error(e);
			ServletUtility.handleException(e, request, response);
			return;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		log.debug("Course List do post end");
		
	}

	@Override
	protected String getView() {
		// TODO Auto-generated method stub
		return ORSView.TEACHER_MYCOURSE_VIEW;
	}

}
