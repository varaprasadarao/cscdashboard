// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;

privileged aspect Account_Roo_DbManaged {
    
    @Column(name = "vertical")
    @NotNull
    private Integer Account.vertical;
    
    @Column(name = "name", length = 100)
    @NotNull
    private String Account.name;
    
    public Integer Account.getVertical() {
        return this.vertical;
    }
    
    public void Account.setVertical(Integer vertical) {
        this.vertical = vertical;
    }
    
    public String Account.getName() {
        return this.name;
    }
    
    public void Account.setName(String name) {
        this.name = name;
    }
    
}
