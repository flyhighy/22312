package com.project.bean;

import java.util.HashSet;
import java.util.Set;


/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User  implements java.io.Serializable {


    // Fields    

     private Integer userId;
     private String userUsername;
     private String userPassword;
     private String userName;
     private String userPhone;
     private Integer userType;
     private Set offices = new HashSet(0);
     private Set checkLists = new HashSet(0);
     private Set companies = new HashSet(0);
     private Set departments = new HashSet(0);
     private Set districts = new HashSet(0);
     private Set streets = new HashSet(0);
     private Set sendMsgs = new HashSet(0);


    // Constructors

    /** default constructor */
    public User() {
    }

	/** minimal constructor */
    public User(String userUsername, String userPassword, String userName, String userPhone, Integer userType) {
        this.userUsername = userUsername;
        this.userPassword = userPassword;
        this.userName = userName;
        this.userPhone = userPhone;
        this.userType = userType;
    }
    
    /** full constructor */
    public User(String userUsername, String userPassword, String userName, String userPhone, Integer userType, Set offices, Set checkLists, Set companies, Set departments, Set districts, Set streets, Set sendMsgs) {
        this.userUsername = userUsername;
        this.userPassword = userPassword;
        this.userName = userName;
        this.userPhone = userPhone;
        this.userType = userType;
        this.offices = offices;
        this.checkLists = checkLists;
        this.companies = companies;
        this.departments = departments;
        this.districts = districts;
        this.streets = streets;
        this.sendMsgs = sendMsgs;
    }

   
    // Property accessors

    public Integer getUserId() {
        return this.userId;
    }
    
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserUsername() {
        return this.userUsername;
    }
    
    public void setUserUsername(String userUsername) {
        this.userUsername = userUsername;
    }

    public String getUserPassword() {
        return this.userPassword;
    }
    
    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserName() {
        return this.userName;
    }
    
    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPhone() {
        return this.userPhone;
    }
    
    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public Integer getUserType() {
        return this.userType;
    }
    
    public void setUserType(Integer userType) {
        this.userType = userType;
    }

    public Set getOffices() {
        return this.offices;
    }
    
    public void setOffices(Set offices) {
        this.offices = offices;
    }

    public Set getCheckLists() {
        return this.checkLists;
    }
    
    public void setCheckLists(Set checkLists) {
        this.checkLists = checkLists;
    }

    public Set getCompanies() {
        return this.companies;
    }
    
    public void setCompanies(Set companies) {
        this.companies = companies;
    }

    public Set getDepartments() {
        return this.departments;
    }
    
    public void setDepartments(Set departments) {
        this.departments = departments;
    }

    public Set getDistricts() {
        return this.districts;
    }
    
    public void setDistricts(Set districts) {
        this.districts = districts;
    }

    public Set getStreets() {
        return this.streets;
    }
    
    public void setStreets(Set streets) {
        this.streets = streets;
    }

    public Set getSendMsgs() {
        return this.sendMsgs;
    }
    
    public void setSendMsgs(Set sendMsgs) {
        this.sendMsgs = sendMsgs;
    }
   








}