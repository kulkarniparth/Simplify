package entities;

public class Project {
	private String project_id;
	private String project_title;
	private String project_domain;
	private String project_description;
	private String teacher_id;
	private String project_link;
	private String project_date;
	
	public String getProject_date() {
		return project_date;
	}

	public void setProject_date(String project_date) {
		this.project_date = project_date;
	}

	public String getProject_link() {
		return project_link;
	}

	public void setProject_link(String project_link) {
		this.project_link = project_link;
	}

	public String getProject_id() {
		return project_id;
	}
	
	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}
	
	public String getProject_title() {
		return project_title;
	}
	
	public void setProject_title(String project_title) {
		this.project_title = project_title;
	}
	
	public String getProject_domain() {
		return project_domain;
	}
	
	public void setProject_domain(String project_domain) {
		this.project_domain = project_domain;
	}
	
	public String getProject_description() {
		return project_description;
	}
	
	public void setProject_description(String project_description) {
		this.project_description = project_description;
	}

	public String getTeacher_id() {
		return teacher_id;
	}

	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
	}
}
