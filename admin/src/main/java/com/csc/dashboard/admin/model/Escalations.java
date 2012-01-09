package com.csc.dashboard.admin.model;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooEntity(versionField = "", table = "escalations")
@RooDbManaged(automaticallyDelete = true)
public class Escalations {
	public Escalations(){
		
	}
	public Escalations(Integer month){
		this.setMonth(month);
	}
}
