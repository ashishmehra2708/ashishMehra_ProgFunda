package com.gl.firstQuestion;

import java.io.Serializable;

public class Employee implements Serializable {	
	String EmployeeId;
	String EmployeeName; 
	String EmployeePhone; 
	String EmployeeAddress;
	int EmployeeSalary;	
	public Employee(String employeeId, String employeeName, String employeePhone, String employeeAddress, int employeeSalary) {
		super();
		EmployeeId = employeeId;
		EmployeeName = employeeName;
		EmployeePhone = employeePhone;
		EmployeeAddress = employeeAddress;
		EmployeeSalary = employeeSalary;
	}
	public String getEmployeeId() {
		return EmployeeId;
	}
	public void setEmployeeId(String employeeId) {
		EmployeeId = employeeId;
	}
	public String getEmployeeName() {
		return EmployeeName;
	}
	public void setEmployeeName(String employeeName) {
		EmployeeName = employeeName;
	}
	public String getEmployeePhone() {
		return EmployeePhone;
	}
	public void setEmployeePhone(String employeePhone) {
		EmployeePhone = employeePhone;
	}
	public String getEmployeeAddress() {
		return EmployeeAddress;
	}
	public void setEmployeeAddress(String employeeAddress) {
		EmployeeAddress = employeeAddress;
	}
	public int getEmployeeSalary() {
		return EmployeeSalary;
	}
	public void setEmployeeSalary(int employeeSalary) {
		EmployeeSalary = employeeSalary;
	}
}
