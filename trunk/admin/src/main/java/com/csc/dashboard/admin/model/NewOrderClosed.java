package com.csc.dashboard.admin.model;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooEntity(versionField = "", table = "new_order_closed")
@RooDbManaged(automaticallyDelete = true)
public class NewOrderClosed {
	public NewOrderClosed(){
		
	}
	public NewOrderClosed(Integer month){
		this.setMonth(month);
	}
}
