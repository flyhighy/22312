package com.project.bean;

import java.util.Date;


/**
 * SendMsg entity. @author MyEclipse Persistence Tools
 */

public class SendMsg  implements java.io.Serializable {


    // Fields    

     private Integer messageId;
     private User user;
     private Short messageType;
     private String messageContent;
     private Date messageTime;
     private Short messageState;


    // Constructors

    /** default constructor */
    public SendMsg() {
    }

    
    /** full constructor */
    public SendMsg(User user, Short messageType, String messageContent, Date messageTime, Short messageState) {
        this.user = user;
        this.messageType = messageType;
        this.messageContent = messageContent;
        this.messageTime = messageTime;
        this.messageState = messageState;
    }

   
    // Property accessors

    public Integer getMessageId() {
        return this.messageId;
    }
    
    public void setMessageId(Integer messageId) {
        this.messageId = messageId;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public Short getMessageType() {
        return this.messageType;
    }
    
    public void setMessageType(Short messageType) {
        this.messageType = messageType;
    }

    public String getMessageContent() {
        return this.messageContent;
    }
    
    public void setMessageContent(String messageContent) {
        this.messageContent = messageContent;
    }

    public Date getMessageTime() {
        return this.messageTime;
    }
    
    public void setMessageTime(Date messageTime) {
        this.messageTime = messageTime;
    }

    public Short getMessageState() {
        return this.messageState;
    }
    
    public void setMessageState(Short messageState) {
        this.messageState = messageState;
    }
   








}