package com.project.bean;



/**
 * Review entity. @author MyEclipse Persistence Tools
 */

public class Review  implements java.io.Serializable {


    // Fields    

     private Integer reviewId;
     private CheckList checkList;
     private String reviewContent;


    // Constructors

    /** default constructor */
    public Review() {
    }

    
    /** full constructor */
    public Review(CheckList checkList, String reviewContent) {
        this.checkList = checkList;
        this.reviewContent = reviewContent;
    }

   
    // Property accessors

    public Integer getReviewId() {
        return this.reviewId;
    }
    
    public void setReviewId(Integer reviewId) {
        this.reviewId = reviewId;
    }

    public CheckList getCheckList() {
        return this.checkList;
    }
    
    public void setCheckList(CheckList checkList) {
        this.checkList = checkList;
    }

    public String getReviewContent() {
        return this.reviewContent;
    }
    
    public void setReviewContent(String reviewContent) {
        this.reviewContent = reviewContent;
    }
   








}