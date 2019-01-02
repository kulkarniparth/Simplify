package entities;

public class Student {
	private String student_id;
	private String student_name;
	private String student_email;
	private String student_dept;
	private String student_batch;
	private String student_password;
	private String project_id;
	
	public Student() {
	}

	public Student(String student_id, String student_name, String student_email, String student_dept,String student_batch,
			String student_password, String project_id) {
		this.student_id = student_id;
		this.student_name = student_name;
		this.student_email = student_email;
		this.student_dept = student_dept;
		this.student_batch = student_batch;
		this.student_password = student_password;
		this.project_id = project_id;
	}
	
	public Student(String student_name, String student_email, String student_dept, String student_batch,
			String student_password, String project_id) {
		this.student_name = student_name;
		this.student_email = student_email;
		this.student_dept = student_dept;
		this.student_batch = student_batch;
		this.student_password = student_password;
		this.project_id = project_id;
	}


	public String getStudent_id() {
		return student_id;
	}
	
	
	public String getProject_id() {
		return project_id;
	}


	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}


	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}
	public String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	public String getStudent_email() {
		return student_email;
	}
	public void setStudent_email(String student_email) {
		this.student_email = student_email;
	}
	public String getStudent_dept() {
		return student_dept;
	}
	public void setStudent_dept(String student_dept) {
		this.student_dept= student_dept;
	}
	public String getStudent_password() {
		return student_password;
	}
	public void setStudent_password(String student_password) {
		this.student_password = student_password;
	}

	public String getStudent_batch() {
		return student_batch;
	}

	public void setStudent_batch(String student_batch) {
		this.student_batch = student_batch;
	}


	@Override
	public String toString() {
		return "Student [student_id=" + student_id + ", student_name=" + student_name + ", student_email="
				+ student_email + ", student_dept=" + student_dept + ", student_batch=" + student_batch
				+ ", student_password=" + student_password + ", project_id=" + project_id + "]";
	}	
	
	
}
