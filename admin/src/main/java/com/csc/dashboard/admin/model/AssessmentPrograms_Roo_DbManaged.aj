// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

privileged aspect AssessmentPrograms_Roo_DbManaged {
    
    @Column(name = "monthid")
    private Integer AssessmentPrograms.month;
    
    @ManyToOne
    @JoinColumn(name = "team", referencedColumnName = "id", nullable = false)
    private Team AssessmentPrograms.team;
    
    @Column(name = "knowledge")
    private Integer AssessmentPrograms.knowledge;
    
    @Column(name = "process")
    private Integer AssessmentPrograms.process;
    
    @Column(name = "technical")
    private Integer AssessmentPrograms.technical;
    
    public Integer AssessmentPrograms.getMonth() {
        return this.month;
    }
    
    public void AssessmentPrograms.setMonth(Integer month) {
        this.month = month;
    }
    
    public Team AssessmentPrograms.getTeam() {
        return this.team;
    }
    
    public void AssessmentPrograms.setTeam(Team team) {
        this.team = team;
    }
    
    public Integer AssessmentPrograms.getKnowledge() {
        return this.knowledge;
    }
    
    public void AssessmentPrograms.setKnowledge(Integer knowledge) {
        this.knowledge = knowledge;
    }
    
    public Integer AssessmentPrograms.getProcess() {
        return this.process;
    }
    
    public void AssessmentPrograms.setProcess(Integer process) {
        this.process = process;
    }
    
    public Integer AssessmentPrograms.getTechnical() {
        return this.technical;
    }
    
    public void AssessmentPrograms.setTechnical(Integer technical) {
        this.technical = technical;
    }
    
}
