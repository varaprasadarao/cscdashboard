// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect Attrition_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "account", referencedColumnName = "id", nullable = false)
    private Account Attrition.account;
    
    @Column(name = "monthid")
    private Integer Attrition.month;
    
    @Column(name = "attrition_num")
    @NotNull
    private Integer Attrition.attritionNum;
    
    @Column(name = "opening_head_count")
    @NotNull
    private Integer Attrition.openingHeadCount;
    
    @Column(name = "closing_head_count")
    @NotNull
    private Integer Attrition.closingHeadCount;
    
    public Account Attrition.getAccount() {
        return this.account;
    }
    
    public void Attrition.setAccount(Account account) {
        this.account = account;
    }
    
    public Integer Attrition.getMonth() {
        return this.month;
    }
    
    public void Attrition.setMonth(Integer month) {
        this.month = month;
    }
    
    public Integer Attrition.getAttritionNum() {
        return this.attritionNum;
    }
    
    public void Attrition.setAttritionNum(Integer attritionNum) {
        this.attritionNum = attritionNum;
    }
    
    public Integer Attrition.getOpeningHeadCount() {
        return this.openingHeadCount;
    }
    
    public void Attrition.setOpeningHeadCount(Integer openingHeadCount) {
        this.openingHeadCount = openingHeadCount;
    }
    
    public Integer Attrition.getClosingHeadCount() {
        return this.closingHeadCount;
    }
    
    public void Attrition.setClosingHeadCount(Integer closingHeadCount) {
        this.closingHeadCount = closingHeadCount;
    }
    
}
