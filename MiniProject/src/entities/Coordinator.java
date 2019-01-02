package entities;

public class Coordinator {
	private String coordinator_id;
	private String coordinator_name;
	private String coordinator_email;
	private String coordinator_dept;
	private String coordinator_password;
	
	public String getCoordinator_id() {
		return coordinator_id;
	}
	
	public void setCoordinator_id(String coordinator_id) {
		this.coordinator_id = coordinator_id;
	}
	
	public String getCoordinator_name() {
		return coordinator_name;
	}
	
	public void setCoordinator_name(String coordinator_name) {
		this.coordinator_name = coordinator_name;
	}
	
	public String getCoordinator_password() {
		return coordinator_password;
	}
	
	public void setCoordinator_password(String coordinator_password) {
		this.coordinator_password = coordinator_password;
	}
	
	public String getCoordinator_dept() {
		return coordinator_dept;
	}
	
	public void setCoordinator_dept(String coordinator_dept) {
		this.coordinator_dept = coordinator_dept;
	}

	public String getCoordinator_email() {
		return coordinator_email;
	}

	public void setCoordinator_email(String coordinator_email) {
		this.coordinator_email = coordinator_email;
	}
}
