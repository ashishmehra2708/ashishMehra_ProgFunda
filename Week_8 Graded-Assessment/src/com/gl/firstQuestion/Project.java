package com.gl.firstQuestion;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class Project implements Serializable{
	
	String projectCode;
	String projectName;
	int projectStrength;
	Employee e;
	
	
	public Project(String projectCode, String projectName, int projectStrength) {
		super();
		this.projectCode = projectCode;
		this.projectName = projectName;
		this.projectStrength = projectStrength;
	}
	
	
	public Project(Employee e) {
		this.e=e;
	}


	public String getProjectCode() {
		return projectCode;
	}
	public void setProjectCode(String projectCode) {
		this.projectCode = projectCode;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public int getProjectStrength() {
		return projectStrength;
	}
	public void setProjectStrength(int projectStrength) {
		this.projectStrength = projectStrength;
	}
	

	@Override
	public String toString() {
		return "Project [" + (elist1 != null ? "elist1=" + elist1 + ", " : "")
				+ (elist2 != null ? "elist2=" + elist2 + ", " : "") + (elist3 != null ? "elist3=" + elist3 + ", " : "")
				+ (map1 != null ? "map1=" + map1 : "") + "]";
	}


	ArrayList<Employee> elist1 = new ArrayList<Employee>();
	ArrayList<Employee> elist2 = new ArrayList<Employee>();
	ArrayList<Employee> elist3 = new ArrayList<Employee>();
	
	Map <Project,ArrayList<Employee>> map1 = new HashMap<>();


	public void serializeProjectDetails(Map<Project, ArrayList<Employee>> map12) {
		
		System.out.println("Serialized Map of Project Successfully...");
		
	}
	
	public void printData() {
		//Project obj = new Project(e);
		System.out.println("Project "+this.projectCode+" "+this.projectName);
	}
}