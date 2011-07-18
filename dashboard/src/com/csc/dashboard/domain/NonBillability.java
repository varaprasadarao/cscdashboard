package com.csc.dashboard.domain;

import java.io.Serializable;

public class NonBillability implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5355578004725387876L;
	private int id;
	private String team;
	private String month;
	private int headCount;
	private int offshoreBillingHC;
	private int onshoreBillingHC;
	private int lossOfBillingAvgHC;
	private int partialBilling;
	private double nonBillabilityRatio;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public int getHeadCount() {
		return headCount;
	}
	public void setHeadCount(int headCount) {
		this.headCount = headCount;
	}
	public int getOffshoreBillingHC() {
		return offshoreBillingHC;
	}
	public void setOffshoreBillingHC(int offshoreBillingHC) {
		this.offshoreBillingHC = offshoreBillingHC;
	}
	public int getOnshoreBillingHC() {
		return onshoreBillingHC;
	}
	public void setOnshoreBillingHC(int onshoreBillingHC) {
		this.onshoreBillingHC = onshoreBillingHC;
	}
	public int getLossOfBillingAvgHC() {
		return lossOfBillingAvgHC;
	}
	public void setLossOfBillingAvgHC(int lossOfBillingAvgHC) {
		this.lossOfBillingAvgHC = lossOfBillingAvgHC;
	}
	public int getPartialBilling() {
		return partialBilling;
	}
	public void setPartialBilling(int partialBilling) {
		this.partialBilling = partialBilling;
	}
	public double getNonBillabilityRatio() {
		return nonBillabilityRatio;
	}
	public void setNonBillabilityRatio(double nonBillabilityRatio) {
		this.nonBillabilityRatio = nonBillabilityRatio;
	}
	
	
	
	
}
