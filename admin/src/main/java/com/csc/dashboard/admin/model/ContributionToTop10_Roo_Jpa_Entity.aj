// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import java.lang.Integer;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect ContributionToTop10_Roo_Jpa_Entity {
    
    declare @type: ContributionToTop10: @Entity;
    
    declare @type: ContributionToTop10: @Table(name = "contribution_to_top10");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer ContributionToTop10.id;
    
    public Integer ContributionToTop10.getId() {
        return this.id;
    }
    
    public void ContributionToTop10.setId(Integer id) {
        this.id = id;
    }
    
}