// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Margins_Roo_Jpa_Entity {
    
    declare @type: Margins: @Entity;
    
    declare @type: Margins: @Table(name = "margins");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Margins.id;
    
    public Integer Margins.getId() {
        return this.id;
    }
    
    public void Margins.setId(Integer id) {
        this.id = id;
    }
    
}