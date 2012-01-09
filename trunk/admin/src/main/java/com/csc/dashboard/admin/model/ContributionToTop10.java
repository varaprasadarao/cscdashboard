package com.csc.dashboard.admin.model;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooEntity(versionField = "", table = "contribution_to_top10")
@RooDbManaged(automaticallyDelete = true)
public class ContributionToTop10 {
	
	public ContributionToTop10(){
		
	}
	public ContributionToTop10(Integer month){
		this.setMonth(month);
	}
}
