package entities;

public class Teacher {
	private String teacher_id;
	private String teacher_name;
	private String teacher_email;
	private String teacher_dept;
	private String teacher_password;
	
	public String getTeacher_id() {
		return teacher_id;
	}
	
	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
	}
	
	public String getTeacher_name() {
		return teacher_name;
	}
	
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	
	public String getTeacher_dept() {
		return teacher_dept;
	}
	
	public void setTeacher_dept(String teacher_dept) {
		this.teacher_dept = teacher_dept;
	}
	
	public String getTeacher_password() {
		return teacher_password;
	}
	
	public void setTeacher_password(String teacher_password) {
		this.teacher_password = teacher_password;
	}

	public String getTeacher_email() {
		return teacher_email;
	}

	public void setTeacher_email(String teacher_email) {
		this.teacher_email = teacher_email;
	}
}
