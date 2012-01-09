// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

privileged aspect RepresentationInCsc_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "account", referencedColumnName = "id", nullable = false)
    private Account RepresentationInCsc.account;
    
    @Column(name = "monthid")
	private Integer RepresentationInCsc.month;
    
    @ManyToOne
    @JoinColumn(name = "team", referencedColumnName = "id")
    private Team RepresentationInCsc.team;
    
    @Column(name = "name_of_forum", length = 100)
    private String RepresentationInCsc.nameOfForum;
    
    @Column(name = "resource", length = 200)
    private String RepresentationInCsc.resource;
    
    @Column(name = "status", length = 100)
    private String RepresentationInCsc.status;
    
    @Column(name = "support_required", length = 500)
    private String RepresentationInCsc.supportRequired;
    
    public Account RepresentationInCsc.getAccount() {
        return this.account;
    }
    
    public void RepresentationInCsc.setAccount(Account account) {
        this.account = account;
    }
    
    public Integer RepresentationInCsc.getMonth() {
        return this.month;
    }
    
    public void RepresentationInCsc.setMonth(Integer month) {
        this.month = month;
    }
    
    public Team RepresentationInCsc.getTeam() {
        return this.team;
    }
    
    public void RepresentationInCsc.setTeam(Team team) {
        this.team = team;
    }
    
    public String RepresentationInCsc.getNameOfForum() {
        return this.nameOfForum;
    }
    
    public void RepresentationInCsc.setNameOfForum(String nameOfForum) {
        this.nameOfForum = nameOfForum;
    }
    
    public String RepresentationInCsc.getResource() {
        return this.resource;
    }
    
    public void RepresentationInCsc.setResource(String resource) {
        this.resource = resource;
    }
    
    public String RepresentationInCsc.getStatus() {
        return this.status;
    }
    
    public void RepresentationInCsc.setStatus(String status) {
        this.status = status;
    }
    
    public String RepresentationInCsc.getSupportRequired() {
        return this.supportRequired;
    }
    
    public void RepresentationInCsc.setSupportRequired(String supportRequired) {
        this.supportRequired = supportRequired;
    }
    
}