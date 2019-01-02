package entities;

public class Notice {

	private String notice_id;
	private String notice_description;
	private String coordinator_id;

	
public Notice()
{
	
}

public Notice(String notice_id,String notice_description,String coordinator_id)
{
	this.notice_id=notice_id;
	this.notice_description=notice_description;
	this.coordinator_id=coordinator_id;
}

public Notice(String notice_description,String coordinator_id)
{
	this.notice_description=notice_description;
	this.coordinator_id=coordinator_id;
}

public String getNotice_id() {
	return notice_id;
}

public void setNotice_id(String notice_id) {
	this.notice_id = notice_id;
}

public String getNotice_description() {
	return notice_description;
}

public void setNotice_description(String notice_description) {
	this.notice_description = notice_description;
}

public String getCoordinator_id() {
	return coordinator_id;
}

public void setCoordinator_id(String coordinator_id) {
	this.coordinator_id = coordinator_id;
}


}