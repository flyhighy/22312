package com.project.bean;

import java.util.HashSet;
import java.util.Set;


/**
 * Department entity. @author MyEclipse Persistence Tools
 */

public class Department  implements java.io.Serializable {


    // Fields    

     private Integer departmentId;
     private User user;
     private String departmentName;
     private Set subdivisions = new HashSet(0);


    // Constructors

    /** default constructor */
    public Department() {
    }

	/** minimal constructor */
    public Department(Integer departmentId, String departmentName) {
        this.departmentId = departmentId;
        this.departmentName = departmentName;
    }
    
    /** full constructor */
    public Department(Integer departmentId, User user, String departmentName, Set subdivisions) {
        this.departmentId = departmentId;
        this.user = user;
        this.departmentName = departmentName;
        this.subdivisions = subdivisions;
    }

   
    // Property accessors

    public Integer getDepartmentId() {
        return this.departmentId;
    }
    
    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public String getDepartmentName() {
        return this.departmentName;
    }
    
    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public Set getSubdivisions() {
        return this.subdivisions;
    }
    
    public void setSubdivisions(Set subdivisions) {
        this.subdivisions = subdivisions;
    }
   








}