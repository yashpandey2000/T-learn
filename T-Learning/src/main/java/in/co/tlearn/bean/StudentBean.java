package in.co.tlearn.bean;

import java.util.Date;

public class StudentBean extends UserBean {
	
	
	public long course_id;
	public String course_name;
	public String num_Course_enrolled;
	public Date doj;
	
	
	public long getCourse_id() {
		return course_id;
	}
	public void setCourse_id(long course_id) {
		this.course_id = course_id;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public Date getDoj() {
		return doj;
	}
	public void setDoj(Date doj) {
		this.doj = doj;
	}
	public String getNum_Course_enrolled() {
		return num_Course_enrolled;
	}
	public void setNum_Course_enrolled(String num_Course_enrolled) {
		this.num_Course_enrolled = num_Course_enrolled;
	}
	
	
}
