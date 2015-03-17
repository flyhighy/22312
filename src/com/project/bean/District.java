package com.project.bean;

import java.util.HashSet;
import java.util.Set;


/**
 * District entity. @author MyEclipse Persistence Tools
 */

public class District  implements java.io.Serializable {


    // Fields    

     private Integer districtId;
     private User user;
     private String districtName;
     private Set offices = new HashSet(0);


    // Constructors

    /** default constructor */
    public District() {
    }

	/** minimal constructor */
    public District(Integer districtId, User user, String districtName) {
        this.districtId = districtId;
        this.user = user;
        this.districtName = districtName;
    }
    
    /** full constructor */
    public District(Integer districtId, User user, String districtName, Set offices) {
        this.districtId = districtId;
        this.user = user;
        this.districtName = districtName;
        this.offices = offices;
    }

   
    // Property accessors

    public Integer getDistrictId() {
        return this.districtId;
    }
    
    public void setDistrictId(Integer districtId) {
        this.districtId = districtId;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public String getDistrictName() {
        return this.districtName;
    }
    
    public void setDistrictName(String districtName) {
        this.districtName = districtName;
    }

    public Set getOffices() {
        return this.offices;
    }
    
    public void setOffices(Set offices) {
        this.offices = offices;
    }
   








}