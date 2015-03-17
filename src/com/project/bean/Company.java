package com.project.bean;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * Company entity. @author MyEclipse Persistence Tools
 */

public class Company  implements java.io.Serializable {


    // Fields    

     private Integer companyId;
     private Street street;
     private Subdivision subdivision;
     private User user;
     private String companyName;
     private String companyCustodian;
     private String companyPosition;
     private String companyDanger;
     private String companyCondition;
     private Date companyTime;
     private Double companyArea;
     private Set checkLists = new HashSet(0);


    // Constructors

    /** default constructor */
    public Company() {
    }

	/** minimal constructor */
    public Company(Integer companyId, Street street, Subdivision subdivision, String companyName, String companyCustodian, String companyPosition, String companyDanger,String companyCondition,Double companyArea) {
        this.companyId = companyId;
        this.street = street;
        this.subdivision = subdivision;
        this.companyName = companyName;
        this.companyCustodian = companyCustodian;
        this.companyPosition = companyPosition;
        this.companyDanger = companyDanger;
        this.companyCondition = companyCondition;
        this.companyArea=companyArea;
    }
    
    /** full constructor */
    public Company(Integer companyId, Street street, Subdivision subdivision, User user, String companyName, String companyCustodian, String companyPosition, String companyDanger,String companyCondition, Date companyTime,Double companyArea, Set checkLists) {
        this.companyId = companyId;
        this.street = street;
        this.subdivision = subdivision;
        this.user = user;
        this.companyName = companyName;
        this.companyCustodian = companyCustodian;
        this.companyPosition = companyPosition;
        this.companyDanger = companyDanger;
        this.companyCondition = companyCondition;
        this.companyTime = companyTime;
        this.companyArea=companyArea;
        this.checkLists = checkLists;
    }

   
    // Property accessors

    public Integer getCompanyId() {
        return this.companyId;
    }
    
    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public Street getStreet() {
        return this.street;
    }
    
    public void setStreet(Street street) {
        this.street = street;
    }

    public Subdivision getSubdivision() {
        return this.subdivision;
    }
    
    public void setSubdivision(Subdivision subdivision) {
        this.subdivision = subdivision;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public String getCompanyName() {
        return this.companyName;
    }
    
    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyCustodian() {
        return this.companyCustodian;
    }
    
    public void setCompanyCustodian(String companyCustodian) {
        this.companyCustodian = companyCustodian;
    }

    public String getCompanyPosition() {
        return this.companyPosition;
    }
    
    public void setCompanyPosition(String companyPosition) {
        this.companyPosition = companyPosition;
    }

    public String getCompanyDanger() {
        return this.companyDanger;
    }
    
    public void setCompanyDanger(String companyDanger) {
        this.companyDanger = companyDanger;
    }

    public Date getCompanyTime() {
        return this.companyTime;
    }
    
    public void setCompanyTime(Date companyTime) {
        this.companyTime = companyTime;
    }

    public Set getCheckLists() {
        return this.checkLists;
    }
    
    public void setCheckLists(Set checkLists) {
        this.checkLists = checkLists;
    }

	public String getCompanyCondition() {
		return companyCondition;
	}

	public void setCompanyCondition(String companyCondition) {
		this.companyCondition = companyCondition;
	}

	public Double getCompanyArea() {
		return companyArea;
	}

	public void setCompanyArea(Double companyArea) {
		this.companyArea = companyArea;
	}
   








}