// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import java.lang.Integer;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;

privileged aspect Months_Roo_DbManaged {
    
    @Column(name = "month", unique = true)
    @NotNull
    private Integer Months.month;
    
    @Column(name = "year", unique = true)
    @NotNull
    private Integer Months.year;
    
    public Integer Months.getMonth() {
        return this.month;
    }
    
    public void Months.setMonth(Integer month) {
        this.month = month;
    }
    
    public Integer Months.getYear() {
        return this.year;
    }
    
    public void Months.setYear(Integer year) {
        this.year = year;
    }
    
}
