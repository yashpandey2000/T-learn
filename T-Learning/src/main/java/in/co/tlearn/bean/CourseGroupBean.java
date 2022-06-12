package in.co.tlearn.bean;

public class CourseGroupBean extends BaseBean{

	public String course_group_name;
	public String course_group_description;
	
	public String getCourse_group_name() {
		return course_group_name;
	}
	public void setCourse_group_name(String course_group_name) {
		this.course_group_name = course_group_name;
	}
	public String getCourse_group_description() {
		return course_group_description;
	}
	public void setCourse_group_description(String course_group_description) {
		this.course_group_description = course_group_description;
	}
	public String getkey() {
		// TODO Auto-generated method stub
		return id+"";
	}
	public String getvalue() {
		// TODO Auto-generated method stub
		return course_group_name;
	}
	
	
	
}
