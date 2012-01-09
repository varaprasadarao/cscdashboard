package com.csc.dashboard;

import java.text.DateFormatSymbols;
import java.text.DecimalFormat;

public class Utils {
	
	
	public static double roundDecimal(double d) {
    	DecimalFormat twoDForm = new DecimalFormat("#.#");
    	return Double.valueOf(twoDForm.format(d));
	}
	
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
