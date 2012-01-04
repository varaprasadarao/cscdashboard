// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import com.csc.dashboard.admin.model.Months;
import com.csc.dashboard.admin.model.Team;
import java.lang.String;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect Csat_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "month", referencedColumnName = "id", nullable = false)
    private Months Csat.month;
    
    @ManyToOne
    @JoinColumn(name = "team", referencedColumnName = "id", nullable = false)
    private Team Csat.team;
    
    @Column(name = "description", length = 100)
    @NotNull
    private String Csat.description;
    
    @Column(name = "rating", length = 100)
    @NotNull
    private String Csat.rating;
    
    public Months Csat.getMonth() {
        return this.month;
    }
    
    public void Csat.setMonth(Months month) {
        this.month = month;
    }
    
    public Team Csat.getTeam() {
        return this.team;
    }
    
    public void Csat.setTeam(Team team) {
        this.team = team;
    }
    
    public String Csat.getDescription() {
        return this.description;
    }
    
    public void Csat.setDescription(String description) {
        this.description = description;
    }
    
    public String Csat.getRating() {
        return this.rating;
    }
    
    public void Csat.setRating(String rating) {
        this.rating = rating;
    }
    
}
