// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import com.csc.dashboard.admin.model.Months;
import com.csc.dashboard.admin.model.Team;
import java.lang.Integer;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect Innovation_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "month", referencedColumnName = "id", nullable = false)
    private Months Innovation.month;
    
    @ManyToOne
    @JoinColumn(name = "team", referencedColumnName = "id", nullable = false)
    private Team Innovation.team;
    
    @Column(name = "avg_hc")
    @NotNull
    private Integer Innovation.avgHc;
    
    @Column(name = "inno_submitted")
    private Integer Innovation.innoSubmitted;
    
    @Column(name = "inno_qualified")
    private Integer Innovation.innoQualified;
    
    @Column(name = "manhrs_of_qualified_inno")
    private Integer Innovation.manhrsOfQualifiedInno;
    
    public Months Innovation.getMonth() {
        return this.month;
    }
    
    public void Innovation.setMonth(Months month) {
        this.month = month;
    }
    
    public Team Innovation.getTeam() {
        return this.team;
    }
    
    public void Innovation.setTeam(Team team) {
        this.team = team;
    }
    
    public Integer Innovation.getAvgHc() {
        return this.avgHc;
    }
    
    public void Innovation.setAvgHc(Integer avgHc) {
        this.avgHc = avgHc;
    }
    
    public Integer Innovation.getInnoSubmitted() {
        return this.innoSubmitted;
    }
    
    public void Innovation.setInnoSubmitted(Integer innoSubmitted) {
        this.innoSubmitted = innoSubmitted;
    }
    
    public Integer Innovation.getInnoQualified() {
        return this.innoQualified;
    }
    
    public void Innovation.setInnoQualified(Integer innoQualified) {
        this.innoQualified = innoQualified;
    }
    
    public Integer Innovation.getManhrsOfQualifiedInno() {
        return this.manhrsOfQualifiedInno;
    }
    
    public void Innovation.setManhrsOfQualifiedInno(Integer manhrsOfQualifiedInno) {
        this.manhrsOfQualifiedInno = manhrsOfQualifiedInno;
    }
    
}