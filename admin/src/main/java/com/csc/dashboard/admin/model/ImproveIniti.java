package com.csc.dashboard.admin.model;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooEntity(versionField = "", table = "improve_initi")
@RooDbManaged(automaticallyDelete = true)
public class ImproveIniti {
	public ImproveIniti(){
		
	}
	public ImproveIniti(Integer month){
		this.setMonth(month);
	}
}
