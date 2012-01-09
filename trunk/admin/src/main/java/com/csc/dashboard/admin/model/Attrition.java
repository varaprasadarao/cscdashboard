package com.csc.dashboard.admin.model;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooEntity(versionField = "", table = "attrition")
@RooDbManaged(automaticallyDelete = true)
public class Attrition {
	public Attrition(){
		
	}
	public Attrition(Integer month){
		this.setMonth(month);
	}
}
