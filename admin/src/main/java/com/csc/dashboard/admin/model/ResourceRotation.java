package com.csc.dashboard.admin.model;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooEntity(versionField = "", table = "resource_rotation")
@RooDbManaged(automaticallyDelete = true)
public class ResourceRotation {
	public ResourceRotation(){
		
	}
	public ResourceRotation(Integer month){
		this.setMonth(month);
	}
}
