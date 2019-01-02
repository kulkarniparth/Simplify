package jdbc_student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


import entities.Coordinator;
import entities.Project;
import entities.Review1;
import entities.Review2;
import entities.Review3;
import entities.Student;
import entities.Teacher;
import entities.Technology;
import entities.Notice;

public class Jdbc {
	String url="jdbc:mysql://localhost:3306/mini";
	String user="root";
	String pass="pict123";
	
	
	public Connection Connection()
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myConnection = DriverManager.getConnection(url,user,pass);
            
            return myConnection;
        } catch (ClassNotFoundException | SQLException ex) {Logger.getLogger(Jdbc.class.getName()).log(Level.SEVERE, null, ex);}
        return null;
    }
	
	
	//login purpose
	public boolean checkStudent(String student_id,String student_password) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from students where student_id=? and student_password=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,student_id);
			preparedStatement.setString(2,student_password);
			ResultSet resultSet=preparedStatement.executeQuery();
			if(resultSet.next()) {
				return true;
			}
			else {
				return false;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	//login purpose
	public boolean checkTeacher(String teacher_id, String teacher_password){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from teachers where teacher_id=? and teacher_password=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,teacher_id);
			preparedStatement.setString(2,teacher_password);
			ResultSet resultSet=preparedStatement.executeQuery();
			if(resultSet.next()) {
				return true;
			}
			else {
				return false;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

	//login purpose
	public boolean checkCoordinator(String coordinator_id, String coordinator_password){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from coordinators where coordinator_id=? and coordinator_password=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,coordinator_id);
			preparedStatement.setString(2,coordinator_password);
			ResultSet resultSet=preparedStatement.executeQuery();
			if(resultSet.next()) {
				return true;
			}
			else {
				return false;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	//signin purpose
	public void insertStudent(Student student){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="insert into students values(?,?,?,?,?,?,?)";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,student.getStudent_id());
			preparedStatement.setString(2,student.getStudent_name());
			preparedStatement.setString(3,student.getStudent_email());
			preparedStatement.setString(4,student.getStudent_dept());
			preparedStatement.setString(5,student.getStudent_batch());
			preparedStatement.setString(6,student.getStudent_password());
			preparedStatement.setString(7,student.getProject_id());
			preparedStatement.execute();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	//signin purpose
	public void insertReview1(String id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="insert into review1s(review1_id) values(?)";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,id);
			preparedStatement.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//signin purpose
	public void insertReview2(String id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="insert into review2s(review2_id) values(?)";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,id);
			preparedStatement.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//signin purpose
	public void insertReview3(String id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="insert into review3s(review3_id) values(?)";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,id);
			preparedStatement.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//signin purpose
	public void insertTeacher(Teacher teacher){
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="insert into teachers values(?,?,?,?,?)";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,teacher.getTeacher_id());
			preparedStatement.setString(2,teacher.getTeacher_name());
			preparedStatement.setString(3,teacher.getTeacher_email());
			preparedStatement.setString(4,teacher.getTeacher_dept());
			preparedStatement.setString(5,teacher.getTeacher_password());
			preparedStatement.execute();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	//signin purpose
	public void insertCoordinator(Coordinator coordinator){
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="insert into coordinators values(?,?,?,?,?)";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,coordinator.getCoordinator_id());
			preparedStatement.setString(2,coordinator.getCoordinator_name());
			preparedStatement.setString(3,coordinator.getCoordinator_email());
			preparedStatement.setString(4,coordinator.getCoordinator_password());
			preparedStatement.setString(5,coordinator.getCoordinator_dept());
			preparedStatement.execute();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
	public void editCoordinator(Coordinator coordinator){
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="update coordinators set coordinator_name=?,coordinator_email=?,coordinator_password=?,coordinator_dept=? where coordinator_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,coordinator.getCoordinator_id());
			preparedStatement.setString(1,coordinator.getCoordinator_name());
			preparedStatement.setString(2,coordinator.getCoordinator_email());
			preparedStatement.setString(3,coordinator.getCoordinator_password());
			preparedStatement.setString(4,coordinator.getCoordinator_dept());
			preparedStatement.setString(5,coordinator.getCoordinator_id());
			preparedStatement.execute();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	

	public void insertTechnology(String[] tech_selected, String project_id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="insert into project_tech values(?,?)";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			for(int i=0;i<tech_selected.length;i++) {
				preparedStatement.setString(1,project_id);
				preparedStatement.setString(2,tech_selected[i]);
				preparedStatement.execute();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	//signin purpose
	public void insertProject(Project project){		
		try {
			insertReview1(project.getProject_id());
			insertReview2(project.getProject_id());
			insertReview3(project.getProject_id());
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="insert into projects(project_id,project_title,project_domain,project_description,teacher_id,project_link) values(?,?,?,?,?,?)";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1, project.getProject_id());
			preparedStatement.setString(2, project.getProject_title());
			preparedStatement.setString(3, project.getProject_domain());
			preparedStatement.setString(4, project.getProject_description());
			preparedStatement.setString(5, project.getTeacher_id());
			preparedStatement.setString(6, project.getProject_link());
			preparedStatement.execute();			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void insertNotice(Notice notice) {
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="insert into notices(notice_description,coordinator_id) values(?,?)";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,notice.getNotice_description());
			preparedStatement.setString(2,notice.getCoordinator_id());
			
			System.out.println(notice.getNotice_description());
			System.out.println(notice.getCoordinator_id());
			preparedStatement.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	//sign-in check purpose
	public boolean checkExistingCoordinator(String coordinator_id, String coordinator_email){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from coordinators where coordinator_id=? or coordinator_email=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,coordinator_id);
			preparedStatement.setString(2,coordinator_email);
			ResultSet resultSet=preparedStatement.executeQuery();
			if(resultSet.next()) {
				return true;
			}else {
				return false;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	//sign-in check purpose	
	public boolean checkExistingTeacher(String teacher_id, String teacher_email){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from teachers where teacher_id=? or teacher_email=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,teacher_id);
			preparedStatement.setString(2,teacher_email);
			ResultSet resultSet=preparedStatement.executeQuery();
			if(resultSet.next()) {
				return true;
			}else {
				return false;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	//sign-in check purpose	
	public boolean checkExistingStudent(String student_id, String student_email) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from students where student_id=? or student_email=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,student_id);
			preparedStatement.setString(2,student_email);
			ResultSet resultSet=preparedStatement.executeQuery();
			if(resultSet.next()) {
				return true;
			}else {
				return false;
			}
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	//sign-in check purpose
	public boolean checkExistingProject(String id){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);			
			String sql="select * from projects where project_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,id);
			ResultSet resultSet=preparedStatement.executeQuery();
			if(resultSet.next()) {
				return true;
			}
			else {
				return false;
			}
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	//demographics
	public Student studentInformation(String id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from students where student_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,id);
			ResultSet resultSet=preparedStatement.executeQuery();
			Student tmp=new Student();
			if(resultSet.next()) {
				tmp.setStudent_id(resultSet.getString("student_id"));
				tmp.setStudent_name(resultSet.getString("student_name"));
				tmp.setStudent_email(resultSet.getString("student_email"));
				tmp.setStudent_dept(resultSet.getString("student_dept"));
				tmp.setStudent_batch(resultSet.getString("student_batch"));
				tmp.setProject_id(resultSet.getString("project_id"));
			}
			return tmp;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	//demographics	
	public Teacher teacherInformation(String id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from teachers where teacher_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,id);
			ResultSet resultSet=preparedStatement.executeQuery();
			Teacher tmp=new Teacher();
			if(resultSet.next()) {
				tmp.setTeacher_id(resultSet.getString("teacher_id"));
				tmp.setTeacher_name(resultSet.getString("teacher_name"));
				tmp.setTeacher_email(resultSet.getString("teacher_email"));
				tmp.setTeacher_dept(resultSet.getString("teacher_dept"));
			}
			return tmp;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	//demographics	
	public Notice noticeInformation(String id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from notices where notice_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,id);
			ResultSet resultSet=preparedStatement.executeQuery();
			Notice tmp=new Notice();
			if(resultSet.next()) {
				tmp.setNotice_id(resultSet.getString("notice_id"));
				tmp.setNotice_description(resultSet.getString("notice_description"));
				tmp.setCoordinator_id(resultSet.getString("coordinator_id"));
				
			}
			return tmp;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	public Coordinator coordinatorInformation(String id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from coordinators where coordinator_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,id);
			ResultSet resultSet=preparedStatement.executeQuery();
			Coordinator tmp=new Coordinator();
			if(resultSet.next()) {
				tmp.setCoordinator_id(resultSet.getString("coordinator_id"));
				tmp.setCoordinator_name(resultSet.getString("coordinator_name"));
				tmp.setCoordinator_email(resultSet.getString("coordinator_email"));
				tmp.setCoordinator_dept(resultSet.getString("coordinator_dept"));
			}
			return tmp;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	//project list for coordinators
	public List<Project> listProjectsCoordinator(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from projects";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet resultSet=preparedStatement.executeQuery();
			List<Project>projects=new ArrayList<Project>();
			while(resultSet.next()) {
				Project tmp= new Project();
				tmp.setProject_id(resultSet.getString("project_id"));
				tmp.setProject_title(resultSet.getString("project_title"));
				tmp.setProject_domain(resultSet.getString("project_domain"));
				tmp.setProject_description(resultSet.getString("project_description"));
				tmp.setProject_link(resultSet.getString("project_link"));
				tmp.setProject_date(resultSet.getString("project_date"));
				tmp.setTeacher_id(resultSet.getString("teacher_id"));
				projects.add(tmp);
			}
			return projects;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	
	//projects list 
	public List<Project> listProjects(String id){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from projects where teacher_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1, id);
			ResultSet resultSet=preparedStatement.executeQuery();
			List<Project>projects=new ArrayList<Project>();
			while(resultSet.next()) {
				Project tmp= new Project();
				tmp.setProject_id(resultSet.getString("project_id"));
				tmp.setProject_title(resultSet.getString("project_title"));
				tmp.setProject_domain(resultSet.getString("project_domain"));
				tmp.setProject_description(resultSet.getString("project_description"));
				tmp.setProject_link(resultSet.getString("project_link"));
				tmp.setProject_date(resultSet.getString("project_date"));
				projects.add(tmp);
			}
			return projects;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	public List<Project> listProjectsAll(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from projects where year(project_date)=year(current_date())";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet resultSet=preparedStatement.executeQuery();
			List<Project>projects=new ArrayList<Project>();
			while(resultSet.next()) {
				Project tmp= new Project();
				tmp.setProject_id(resultSet.getString("project_id"));
				tmp.setProject_title(resultSet.getString("project_title"));
				tmp.setProject_domain(resultSet.getString("project_domain"));
				tmp.setProject_description(resultSet.getString("project_description"));
				tmp.setProject_link(resultSet.getString("project_link"));
				tmp.setProject_date(resultSet.getString("project_date"));
				projects.add(tmp);
			}
			return projects;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	



	
	public List<Project> listArchivesProjectsAll(String years){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from projects where year(project_date)=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,years);
			ResultSet resultSet=preparedStatement.executeQuery();
			List<Project>projects=new ArrayList<Project>();
			while(resultSet.next()) {
				Project tmp= new Project();
				tmp.setProject_id(resultSet.getString("project_id"));
				tmp.setProject_title(resultSet.getString("project_title"));
				tmp.setProject_domain(resultSet.getString("project_domain"));
				tmp.setProject_description(resultSet.getString("project_description"));
				tmp.setProject_link(resultSet.getString("project_link"));
				tmp.setProject_date(resultSet.getString("project_date"));
				projects.add(tmp);
			}
			return projects;
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}


	
	
	
	
	public List<Student> studentProject(String id){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from students where project_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,id);
			ResultSet resultSet=preparedStatement.executeQuery();
			List<Student>students=new ArrayList<Student>();
			while(resultSet.next()) {
				Student tmp=new Student();
				tmp.setStudent_id(resultSet.getString("student_id"));
				tmp.setStudent_name(resultSet.getString("student_name"));
				tmp.setStudent_email(resultSet.getString("student_email"));
				tmp.setStudent_dept(resultSet.getString("student_dept"));
				tmp.setStudent_batch(resultSet.getString("student_batch"));
				tmp.setProject_id(resultSet.getString("project_id"));
				students.add(tmp);
			}
			for(Student tmp:students) {
				System.out.println(tmp.getStudent_name());
			}
			return students;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	
	
	public List<Notice> listNotices(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from notices";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet resultSet=preparedStatement.executeQuery();
			List<Notice>notices=new ArrayList<Notice>();
			while(resultSet.next()) {
				Notice tmp= new Notice();
				tmp.setNotice_id(resultSet.getString("notice_id"));
				tmp.setNotice_description(resultSet.getString("notice_description"));
				tmp.setCoordinator_id(resultSet.getString("coordinator_id"));
				notices.add(tmp);
			}
			return notices;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List<Project> listArchivesProjects(String id,String years){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from projects where teacher_id=? and year(project_date)=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1, id);
			preparedStatement.setString(2,years);
			ResultSet resultSet=preparedStatement.executeQuery();
			List<Project>projects=new ArrayList<Project>();
			while(resultSet.next()) {
				Project tmp= new Project();
				tmp.setProject_id(resultSet.getString("project_id"));
				tmp.setProject_title(resultSet.getString("project_title"));
				tmp.setProject_domain(resultSet.getString("project_domain"));
				tmp.setProject_description(resultSet.getString("project_description"));
				tmp.setProject_link(resultSet.getString("project_link"));
				tmp.setProject_date(resultSet.getString("project_date"));
				projects.add(tmp);
			}
			return projects;
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	
	//review1 info
	public Review1 getReview1Info(String id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from review1s where review1_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,id);
			ResultSet resultSet=preparedStatement.executeQuery();
			if(resultSet.next()) {
				Review1 r1=new Review1();
				r1.setReview1_id(resultSet.getString("review1_id"));
				r1.setReview1_marks(resultSet.getInt("review1_marks"));
				r1.setReview1_comment(resultSet.getString("review1_comment"));
				return r1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Review2 getReview2Info(String id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from review2s where review2_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,id);
			ResultSet resultSet=preparedStatement.executeQuery();
			if(resultSet.next()) {
				Review2 r2=new Review2();
				r2.setReview2_id(resultSet.getString("review2_id"));
				r2.setReview2_marks(resultSet.getInt("review2_marks"));
				r2.setReview2_comment(resultSet.getString("review2_comment"));
				return r2;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Review3 getReview3Info(String id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from review3s where review3_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,id);
			ResultSet resultSet=preparedStatement.executeQuery();
			if(resultSet.next()) {
				Review3 r3=new Review3();
				r3.setReview3_id(resultSet.getString("review3_id"));
				r3.setReview3_marks(resultSet.getInt("review3_marks"));
				r3.setReview3_comment(resultSet.getString("review3_comment"));
				return r3;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Project getProjectInfo(String id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from projects where project_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,id);
			ResultSet resultSet=preparedStatement.executeQuery();
			if(resultSet.next()) {
				Project project=new Project();
				project.setProject_id(resultSet.getString("project_id"));
				project.setProject_title(resultSet.getString("project_title"));
				project.setProject_domain(resultSet.getString("project_domain"));
				project.setProject_description(resultSet.getString("project_description"));
				project.setTeacher_id(resultSet.getString("teacher_id"));
				project.setProject_link(resultSet.getString("project_link"));
				project.setProject_date(resultSet.getString("project_date"));
				return project;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List<Technology> getProjectTechInfo(String id) {
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select technologies.technology_id,technologies.technology_name from project_tech,technologies,projects where projects.project_id=project_tech.project_id and project_tech.technology_id=technologies.technology_id and projects.project_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,id);
			ResultSet resultSet=preparedStatement.executeQuery();
			List<Technology>technologies=new ArrayList<Technology>();
			while(resultSet.next()) {
				Technology tmp=new Technology();
				tmp.setTechnology_id(resultSet.getString("technology_id"));
				tmp.setTechnology_name(resultSet.getString("technology_name"));
				technologies.add(tmp);
			}
			return technologies;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;	
	}
	
	
	public List<Technology> listTechInfo() {
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from technologies";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			ResultSet resultSet=preparedStatement.executeQuery();
			List<Technology>technologies=new ArrayList<Technology>();
			while(resultSet.next()) {
				Technology tmp=new Technology();
				tmp.setTechnology_id(resultSet.getString("technology_id"));
				tmp.setTechnology_name(resultSet.getString("technology_name"));
				technologies.add(tmp);
			}
			return technologies;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;	
	}

	public List<Project> listProjectsTech(String teacher_id,String tech_id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="select * from projects,project_tech where projects.project_id=project_tech.project_id and projects.teacher_id=? and project_tech.technology_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,teacher_id);
			preparedStatement.setString(2,tech_id);			
			ResultSet resultSet=preparedStatement.executeQuery();
			List<Project>theList=new ArrayList<Project>();
			while(resultSet.next()) {
				Project tmp=new Project();
				tmp.setProject_id(resultSet.getString("project_id"));
				tmp.setProject_title(resultSet.getString("project_title"));
				tmp.setProject_domain(resultSet.getString("project_domain"));
				tmp.setProject_description(resultSet.getString("project_description"));
				tmp.setTeacher_id(resultSet.getString("teacher_id"));
				tmp.setProject_link(resultSet.getString("project_link"));
				tmp.setProject_date(resultSet.getString("project_date"));
				theList.add(tmp);
			}
			return theList;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void updateReview1(String id,int marks,String comments) {
		try {
			System.out.println("id is "+id);
			System.out.println("marks are"+marks);
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="update review1s set review1_marks=?,review1_comment=? where review1_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setInt(1, marks);
			preparedStatement.setString(2,comments);
			preparedStatement.setString(3,id);
			preparedStatement.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateReview2(String id,int marks,String comments) {
		try {
			System.out.println("id is "+id);
			System.out.println("marks are"+marks);
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="update review2s set review2_marks=?,review2_comment=? where review2_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setInt(1, marks);
			preparedStatement.setString(2,comments);
			preparedStatement.setString(3,id);
			preparedStatement.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateReview3(String id,int marks,String comments) {
		try {
			System.out.println("id is "+id);
			System.out.println("marks are"+marks);
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="update review3s set review3_marks=?,review3_comment=? where review3_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setInt(1, marks);
			preparedStatement.setString(2,comments);
			preparedStatement.setString(3,id);
			preparedStatement.execute();		
			} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void updateCoordinator(Coordinator coordinator2) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="update coordinators set coordinator_name=?,coordinator_email=?,coordinator_password=?,coordinator_dept=? where coordinator_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,coordinator2.getCoordinator_name());
			preparedStatement.setString(2,coordinator2.getCoordinator_email());
			preparedStatement.setString(3,coordinator2.getCoordinator_password());
			preparedStatement.setString(4,coordinator2.getCoordinator_dept());
			preparedStatement.setString(5,coordinator2.getCoordinator_id());
			preparedStatement.execute();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updateStudent(Student student) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="update students set student_name=?,student_email=?,student_password=?,student_dept=?,student_batch=?,project_id=? where student_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,student.getStudent_name());
			preparedStatement.setString(2,student.getStudent_email());
			preparedStatement.setString(3,student.getStudent_password());
			preparedStatement.setString(4,student.getStudent_dept());
			preparedStatement.setString(5,student.getStudent_batch());
			preparedStatement.setString(6,student.getProject_id());
			preparedStatement.setString(7,student.getStudent_id());
			preparedStatement.execute();
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public void updateTeacher(Teacher teacher) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection=DriverManager.getConnection(url, user, pass);
			String sql="update teachers set teacher_name=?,teacher_email=?,teacher_password=?,teacher_dept=? where teacher_id=?";
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,teacher.getTeacher_name());
			preparedStatement.setString(2,teacher.getTeacher_email());
			preparedStatement.setString(3,teacher.getTeacher_password());
			preparedStatement.setString(4,teacher.getTeacher_dept());
			preparedStatement.setString(5,teacher.getTeacher_id());
			preparedStatement.execute();
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}




}
