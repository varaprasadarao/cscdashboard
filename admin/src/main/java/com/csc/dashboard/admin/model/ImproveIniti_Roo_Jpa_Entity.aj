// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect ImproveIniti_Roo_Jpa_Entity {
    
    declare @type: ImproveIniti: @Entity;
    
    declare @type: ImproveIniti: @Table(name = "improve_initi");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer ImproveIniti.id;
    
    public Integer ImproveIniti.getId() {
        return this.id;
    }
    
    public void ImproveIniti.setId(Integer id) {
        this.id = id;
    }
    
}
