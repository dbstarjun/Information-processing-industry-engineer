package dto;

public class EmpmoneyDto {
	private String emp_no;
	private String emp_name;
	private String hire_date;
	private String dept_name;
	private String job;
	private int absence;
	private int night;
	private int holiday;
	private int business_trip;
	private int salary;
	
	public EmpmoneyDto() {
		
	}
	
	public EmpmoneyDto(String emp_no, String emp_name, String hire_date, String dept_name, String job, int absence, int night, int holiday, int business_trip, int salary) {
		super();
		this.emp_no = emp_no;
		this.emp_name = emp_name;
		this.hire_date = hire_date;
		this.dept_name = dept_name;
		this.job = job;
		this.absence = absence;
		this.night = night;
		this.holiday = holiday;
		this.business_trip = business_trip;
		this.salary = salary;
		}
	
	public String getEmp_no() {
		return emp_no;
	}
	public void setEmp_no(String emp_no) {
		this.emp_no = emp_no;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_naem(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getHire_date() {
		return hire_date;
	}
	public void setHire_date(String hire_date) {
		this.hire_date = hire_date;
	}
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public int getAbsence() {
		return absence;
	}
	public void setAbsence(int absence) {
		this.absence = absence;
	}
	public int getNight() {
		return night;
	}
	public void setNight(int night) {
		this.night = night;
	}
	public int getHoliday() {
		return holiday;
	}
	public void setHoliday(int holiday) {
		this.holiday = holiday;
	}
	public int getBusiness_trip() {
		return business_trip;
	}
	public void setBusiness_trip(int business_trip) {
		this.business_trip = business_trip;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
}
