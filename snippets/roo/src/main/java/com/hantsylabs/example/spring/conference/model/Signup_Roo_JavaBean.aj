// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.hantsylabs.example.spring.conference.model;

import com.hantsylabs.example.spring.conference.model.Conference;
import com.hantsylabs.example.spring.conference.model.Signup;
import java.util.Date;

privileged aspect Signup_Roo_JavaBean {
    
    public String Signup.getFirstName() {
        return this.firstName;
    }
    
    public void Signup.setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    public String Signup.getLastName() {
        return this.lastName;
    }
    
    public void Signup.setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public String Signup.getEmail() {
        return this.email;
    }
    
    public void Signup.setEmail(String email) {
        this.email = email;
    }
    
    public String Signup.getPhone() {
        return this.phone;
    }
    
    public void Signup.setPhone(String phone) {
        this.phone = phone;
    }
    
    public String Signup.getOccupation() {
        return this.occupation;
    }
    
    public void Signup.setOccupation(String occupation) {
        this.occupation = occupation;
    }
    
    public String Signup.getCompany() {
        return this.company;
    }
    
    public void Signup.setCompany(String company) {
        this.company = company;
    }
    
    public String Signup.getComment() {
        return this.comment;
    }
    
    public void Signup.setComment(String comment) {
        this.comment = comment;
    }
    
    public Date Signup.getCreatedAt() {
        return this.createdAt;
    }
    
    public void Signup.setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }
    
    public Conference Signup.getConference() {
        return this.conference;
    }
    
    public void Signup.setConference(Conference conference) {
        this.conference = conference;
    }
    
}
