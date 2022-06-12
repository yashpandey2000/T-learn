package in.co.tlearn.bean;

public class MaterialSupportBean extends BaseBean{
	
	public String name;
	public String course_name;
	
	public String teacher_name;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		course_name = course_name;
	}

	
	public String getkey() {
		// TODO Auto-generated method stub
		return id+"";
	}
	public String getvalue() {
		// TODO Auto-generated method stub
		return name;
	}
	
	
	

}
