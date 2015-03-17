package com.project.bean;

import java.util.HashSet;
import java.util.Set;


/**
 * Office entity. @author MyEclipse Persistence Tools
 */

public class Office  implements java.io.Serializable {


    // Fields    

     private Integer officeId;
     private District district;
     private User user;
     private String officeName;
     private Set streets = new HashSet(0);


    // Constructors

    /** default constructor */
    public Office() {
    }

	/** minimal constructor */
    public Office(District district, String officeName) {
         this.district = district;
        this.officeName = officeName;
    }
    
    /** full constructor */
    public Office(District district, User user, String officeName, Set streets) {
        this.district = district;
        this.user = user;
        this.officeName = officeName;
        this.streets = streets;
    }

   
    // Property accessors

    public Integer getOfficeId() {
        return this.officeId;
    }
    
    public void setOfficeId(Integer officeId) {
        this.officeId = officeId;
    }

    public District getDistrict() {
        return this.district;
    }
    
    public void setDistrict(District district) {
        this.district = district;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public String getOfficeName() {
        return this.officeName;
    }
    
    public void setOfficeName(String officeName) {
        this.officeName = officeName;
    }

    public Set getStreets() {
        return this.streets;
    }
    
    public void setStreets(Set streets) {
        this.streets = streets;
    }
   








}