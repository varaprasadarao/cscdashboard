// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;

privileged aspect Sla_Roo_DbManaged {
    
    @Column(name = "sla", precision = 20, scale = 2)
    @NotNull
    private BigDecimal Sla.sla;
    
    public BigDecimal Sla.getSla() {
        return this.sla;
    }
    
    public void Sla.setSla(BigDecimal sla) {
        this.sla = sla;
    }
    
}
