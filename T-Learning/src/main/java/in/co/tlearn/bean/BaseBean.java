package in.co.tlearn.bean;

import java.io.Serializable;
import java.sql.Timestamp;

public abstract class BaseBean implements Serializable , Comparable<BaseBean>,DropdownList{

public long id;
public String createdby;
public String modifiedby;
public Timestamp createddatetime;
public Timestamp modifieddatetime;

public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public String getCreatedby() {
	return createdby;
}
public void setCreatedby(String createdby) {
	this.createdby = createdby;
}
public String getModifiedby() {
	return modifiedby;
}
public void setModifiedby(String modifiedby) {
	this.modifiedby = modifiedby;
}



public Timestamp getCreateddatetime() {
	return createddatetime;
}
public void setCreateddatetime(Timestamp createddatetime) {
	this.createddatetime = createddatetime;
}
public Timestamp getModifieddatetime() {
	return modifieddatetime;
}
public void setModifieddatetime(Timestamp modifieddatetime) {
	this.modifieddatetime = modifieddatetime;
}
public int compareTo(BaseBean o) {
	
	return getvalue().compareTo(o.getvalue());
}
	

	
}
