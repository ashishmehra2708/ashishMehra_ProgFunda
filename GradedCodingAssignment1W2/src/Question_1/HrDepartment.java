package Question_1;

public class HrDepartment extends SuperDepartment {

	public String departmentName() {
		return "HR Department";
	}
	public String getTodaysWork() {
		return "Complete your documents submission";    //return "Fill today’s timesheet and mark your attendance"
	}
	public String getWorkDeadline() {
		return "Complete by EOD";
	}
	public String doActivity() {
		return "team Lunch";
	}

}