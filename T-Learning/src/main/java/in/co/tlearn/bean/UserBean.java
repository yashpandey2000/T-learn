package in.co.tlearn.bean;

import java.util.Date;


public class UserBean extends BaseBean{

	private static final String ACTIVE = "Active";
	private static final String INACTIVE = "Inactive";
	
	public String firstname;
	
	public String lastname;
	
	public String emailid;
	
	public String institute;
	
	public String profile;
	
	
	public String getInstitute() {
		return institute;
	}

	public void setInstitute(String institute) {
		this.institute = institute;
	}
	public Date dob;
	
	public long roleid;
	
	public String rolename;
	
	public String mobileno;
	
	public String gender;
	
	private String password;
	
	private String confirmpassword;
	
	public String Qualifications;
	
	public String tea_uniqueid;
	
	public String getQualifications() {
		return Qualifications;
	}

	public void setQualifications(String qualifications) {
		Qualifications = qualifications;
	}

	public String getTea_uniqueid() {
		return tea_uniqueid;
	}

	public void setTea_uniqueid(String tea_uniqueid) {
		this.tea_uniqueid = tea_uniqueid;
	}
	private String lock = ACTIVE;

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	
	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public long getRoleid() {
		return roleid;
	}

	public void setRoleid(long roleid) {
		this.roleid = roleid;
	}

	public String getRolename() {
		return rolename;
	}

	public void setRolename(String rolename) {
		this.rolename = rolename;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmpassword() {
		return confirmpassword;
	}

	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}

	public String getLock() {
		return lock;
	}

	public void setLock(String lock) {
		this.lock = lock;
	}

	public static String getActive() {
		return ACTIVE;
	}

	public static String getInactive() {
		return INACTIVE;
	}

	public String getkey() {
		// TODO Auto-generated method stub
		return id+ "";
	}
	public String getvalue() {
		// TODO Auto-generated method stub
		return firstname+""+lastname;
	}

	public void getTea_uniqueid(Object setImage_url) {
		// TODO Auto-generated method stub
		
	}

	
	
	
}
