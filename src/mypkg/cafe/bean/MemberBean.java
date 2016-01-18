package mypkg.cafe.bean;

public class MemberBean {
private String id;
private String password;
private String name;
private String address;
private int phonenum;
private int cellphone;
private int admin;

public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public int getPhonenum() {
	return phonenum;
}
public void setPhonenum(int phonenum) {
	this.phonenum = phonenum;
}
public int getCellphone() {
	return cellphone;
}
public void setCellphone(int cellphone) {
	this.cellphone = cellphone;
}
public int getAdmin() {
	return admin;
}
public void setAdmin(int admin) {
	this.admin = admin;
}
@Override
public String toString() {
	return "MemberBean [id=" + id + ", password=" + password + ", name=" + name
			+ ", address=" + address + ", phonenum=" + phonenum
			+ ", cellphone=" + cellphone + ", admin=" + admin + "]";
}


}
