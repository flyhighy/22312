package com.project.bean;

import java.util.HashSet;
import java.util.Set;


/**
 * Street entity. @author MyEclipse Persistence Tools
 */

public class Street  implements java.io.Serializable {


    // Fields    

     private Integer streetId;
     private Office office;
     private User user;
     private String streetName;
     private Set companies = new HashSet(0);


    // Constructors

    /** default constructor */
    public Street() {
    }

	/** minimal constructor */
    public Street(Office office, String streetName) {
        this.office = office;
        this.streetName = streetName;
    }
    
    /** full constructor */
    public Street(Office office, User user, String streetName, Set companies) {
        this.office = office;
        this.user = user;
        this.streetName = streetName;
        this.companies = companies;
    }

   
    // Property accessors

    public Integer getStreetId() {
        return this.streetId;
    }
    
    public void setStreetId(Integer streetId) {
        this.streetId = streetId;
    }

    public Office getOffice() {
        return this.office;
    }
    
    public void setOffice(Office office) {
        this.office = office;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public String getStreetName() {
        return this.streetName;
    }
    
    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public Set getCompanies() {
        return this.companies;
    }
    
    public void setCompanies(Set companies) {
        this.companies = companies;
    }
   








}