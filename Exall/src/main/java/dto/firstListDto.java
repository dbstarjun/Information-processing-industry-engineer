package dto;

public class firstListDto {
	private String student_no;
	private String student_name;
	private String dept_code;
	private String hire_date;
	private String grade;
	
	public firstListDto() {
		
	}
	
	public firstListDto(String student_no, String student_name, String dept_code, String hire_date, String grade) {
		super();
		this.student_no = student_no;
		this.student_name = student_name;
		this.dept_code = dept_code;
		this.hire_date = hire_date;
		this.grade = grade;
 	}
	
	public String getStudent_no() {
		return student_no;
	}
	public void setStudent_no(String student_no) {
		this.student_no = student_no;
	}
	public String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	public String getDept_code() {
		return dept_code;
	}
	public void setDept_code(String dept_code) {
		this.dept_code = dept_code;
	}
	public String getHire_date() {
		return hire_date;
	}
	public void setHire_date(String hire_date) {
		this.hire_date = hire_date;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
}
