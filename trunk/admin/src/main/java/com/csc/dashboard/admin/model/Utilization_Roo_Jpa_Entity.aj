// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Utilization_Roo_Jpa_Entity {
    
    declare @type: Utilization: @Entity;
    
    declare @type: Utilization: @Table(name = "utilization");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Utilization.id;
    
    public Integer Utilization.getId() {
        return this.id;
    }
    
    public void Utilization.setId(Integer id) {
        this.id = id;
    }
    
}
