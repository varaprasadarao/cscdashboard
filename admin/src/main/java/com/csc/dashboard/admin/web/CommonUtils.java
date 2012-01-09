package com.csc.dashboard.admin.web;

import java.text.DateFormatSymbols;

public class CommonUtils {
	
	public static String getFormatedMonth(int m){
		if(m==0){
			return "";
		}
		DateFormatSymbols dfs = new DateFormatSymbols();
        String[] monthDefs = dfs.getShortMonths();
		int mon = m%12;
		int year = m/12;
		return new StringBuilder().append(monthDefs[mon]).append(" ").append(year).toString();
	}

}
