package in.co.tlearn.bean;

public class CourseBean extends BaseBean{
	
	public String course_name;
	public long cgroup_id;
	public String cgroup_name;
	public String course_duration;
	public String course_description;
	public String Tea_id;
	public String Tea_name;
	private String image;
	public String meet_code;
	
	
	
	
	
	public String getMeet_code() {
		return meet_code;
	}
	public void setMeet_code(String meet_code) {
		this.meet_code = meet_code;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getTea_id() {
		return Tea_id;
	}
	public void setTea_id(String tea_id) {
		Tea_id = tea_id;
	}
	public String getTea_name() {
		return Tea_name;
	}
	public void setTea_name(String tea_name) {
		Tea_name = tea_name;
	}
	public String num_student_enrolled;
	
	
	
	public String getCourse_duration() {
		return course_duration;
	}
	public void setCourse_duration(String course_duration) {
		this.course_duration = course_duration;
	}
	public String getNum_student_enrolled() {
		return num_student_enrolled;
	}
	public void setNum_student_enrolled(String num_student_enrolled) {
		this.num_student_enrolled = num_student_enrolled;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	
	public long getCgroup_id() {
		return cgroup_id;
	}
	public void setCgroup_id(long cgroup_id) {
		this.cgroup_id = cgroup_id;
	}
	public String getCgroup_name() {
		return cgroup_name;
	}
	public void setCgroup_name(String cgroup_name) {
		this.cgroup_name = cgroup_name;
	}
	public String getCourse_description() {
		return course_description;
	}
	public void setCourse_description(String course_description) {
		this.course_description = course_description;
	}
	public String getkey() {
		// TODO Auto-generated method stub
		return id+"";
	}
	public String getvalue() {
		// TODO Auto-generated method stub
		return course_name;
	}

	
	

}
