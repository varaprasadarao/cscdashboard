package com.csc.dashboard;

import java.text.DecimalFormat;

public class Utils {
	
	public static double roundDecimal(double d) {
    	DecimalFormat twoDForm = new DecimalFormat("#.#");
    	return Double.valueOf(twoDForm.format(d));
	}

}
