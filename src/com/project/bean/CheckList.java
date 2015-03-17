package com.project.bean;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * CheckList entity. @author MyEclipse Persistence Tools
 */

public class CheckList  implements java.io.Serializable {


    // Fields    

     private Integer listId;
     private User user;
     private Company company;
     private ListItem listItem;
     private Date listTime;
     private Short listResult;
     private Integer listAccount;
     private Set reviews = new HashSet(0);


    // Constructors

    /** default constructor */
    public CheckList() {
    }

	/** minimal constructor */
    public CheckList(User user, Company company, ListItem listItem, Date listTime, Short listResult, Integer listAccount) {
        this.user = user;
        this.company = company;
        this.listItem = listItem;
        this.listTime = listTime;
        this.listResult = listResult;
        this.listAccount = listAccount;
    }
    
    /** full constructor */
    public CheckList(User user, Company company, ListItem listItem, Date listTime, Short listResult, Integer listAccount, Set reviews) {
        this.user = user;
        this.company = company;
        this.listItem = listItem;
        this.listTime = listTime;
        this.listResult = listResult;
        this.listAccount = listAccount;
        this.reviews = reviews;
    }

   
    // Property accessors

    public Integer getListId() {
        return this.listId;
    }
    
    public void setListId(Integer listId) {
        this.listId = listId;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public Company getCompany() {
        return this.company;
    }
    
    public void setCompany(Company company) {
        this.company = company;
    }

    public ListItem getListItem() {
        return this.listItem;
    }
    
    public void setListItem(ListItem listItem) {
        this.listItem = listItem;
    }

    public Date getListTime() {
        return this.listTime;
    }
    
    public void setListTime(Date listTime) {
        this.listTime = listTime;
    }

    public Short getListResult() {
        return this.listResult;
    }
    
    public void setListResult(Short listResult) {
        this.listResult = listResult;
    }

    public Integer getListAccount() {
        return this.listAccount;
    }
    
    public void setListAccount(Integer listAccount) {
        this.listAccount = listAccount;
    }

    public Set getReviews() {
        return this.reviews;
    }
    
    public void setReviews(Set reviews) {
        this.reviews = reviews;
    }
   








}