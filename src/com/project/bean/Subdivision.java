package com.project.bean;

import java.util.HashSet;
import java.util.Set;


/**
 * Subdivision entity. @author MyEclipse Persistence Tools
 */

public class Subdivision  implements java.io.Serializable {


    // Fields    

     private Integer subdivisionId;
     private Department department;
     private String subdivisionName;
     private Set companies = new HashSet(0);


    // Constructors

    /** default constructor */
    public Subdivision() {
    }

	/** minimal constructor */
    public Subdivision(Integer subdivisionId, Department department, String subdivisionName) {
        this.subdivisionId = subdivisionId;
        this.department = department;
        this.subdivisionName = subdivisionName;
    }
    
    /** full constructor */
    public Subdivision(Integer subdivisionId, Department department, String subdivisionName, Set companies) {
        this.subdivisionId = subdivisionId;
        this.department = department;
        this.subdivisionName = subdivisionName;
        this.companies = companies;
    }

   
    // Property accessors

    public Integer getSubdivisionId() {
        return this.subdivisionId;
    }
    
    public void setSubdivisionId(Integer subdivisionId) {
        this.subdivisionId = subdivisionId;
    }

    public Department getDepartment() {
        return this.department;
    }
    
    public void setDepartment(Department department) {
        this.department = department;
    }

    public String getSubdivisionName() {
        return this.subdivisionName;
    }
    
    public void setSubdivisionName(String subdivisionName) {
        this.subdivisionName = subdivisionName;
    }

    public Set getCompanies() {
        return this.companies;
    }
    
    public void setCompanies(Set companies) {
        this.companies = companies;
    }
   








}