package cn.edu.jxnu.entity;

public class Student {

	private String stu_Id;
	private String stu_Name;
	private String stu_Password;
	private String stu_Nickname;
	private String stu_Institute;
	private String stu_Class;
	
	private String stu_Sex;
	private String stu_Birthday;
	private String stu_Email;
	private String stu_Signature;
	
	
	
	public String getStu_Email() {
		return stu_Email;
	}
	public void setStu_Email(String stu_Email) {
		this.stu_Email = stu_Email;
	}
	public String getStu_Signature() {
		return stu_Signature;
	}
	public void setStu_Signature(String stu_Signature) {
		this.stu_Signature = stu_Signature;
	}
	public String getStu_Birthday() {
		return stu_Birthday;
	}
	public void setStu_Birthday(String stu_Birthday) {
		this.stu_Birthday = stu_Birthday;
	}
	public String getStu_Sex() {
		return stu_Sex;
	}
	public void setStu_Sex(String stu_Sex) {
		this.stu_Sex = stu_Sex;
	}
	public String getStu_Id() {
		return stu_Id;
	}
	public void setStu_Id(String stu_Id) {
		this.stu_Id = stu_Id;
	}
	public String getStu_Name() {
		return stu_Name;
	}
	public void setStu_Name(String stu_Name) {
		this.stu_Name = stu_Name;
	}
	public String getStu_Password() {
		return stu_Password;
	}
	public void setStu_Password(String stu_Password) {
		this.stu_Password = stu_Password;
	}
	public String getStu_Nickname() {
		return stu_Nickname;
	}
	public void setStu_Nickname(String stu_Nickname) {
		this.stu_Nickname = stu_Nickname;
	}
	public String getStu_Institute() {
		return stu_Institute;
	}
	public void setStu_Institute(String stu_Institute) {
		this.stu_Institute = stu_Institute;
	}
	public String getStu_Class() {
		return stu_Class;
	}
	public void setStu_Class(String stu_Class) {
		this.stu_Class = stu_Class;
	}
	
	
	/*@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_name=" + user_name
				+ ", user_password=" + user_password + ", user_age=" + user_age
				+", user_sex="+ user_sex + "]";
	}*/
}
