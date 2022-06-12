package in.co.tlearn.bean;

import java.util.Date;

public class TeacherBean extends UserBean{
	
public Date doj;
public String Qualifications;
public long course_id;
public String course_name;
public String tea_uniqueid;

public String getTea_uniqueid() {
	return tea_uniqueid;
}
public void setTea_uniqueid(String tea_uniqueid) {
	this.tea_uniqueid = tea_uniqueid;
}
public Date getDoj() {
	return doj;
}
public void setDoj(Date doj) {
	this.doj = doj;
}
public String getQualifications() {
	return Qualifications;
}
public void setQualifications(String qualifications) {
	Qualifications = qualifications;
}
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



}
