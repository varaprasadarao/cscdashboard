// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;


privileged aspect Billing_Roo_ToString {
    
    public String Billing.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("BilledHrs: ").append(getBilledHrs()).append(", ");
        sb.append("DemandForecastNew: ").append(getDemandForecastNew()).append(", ");
        sb.append("DemandForecastReplacement: ").append(getDemandForecastReplacement()).append(", ");
        sb.append("EmanageSapDisc: ").append(getEmanageSapDisc()).append(", ");
        sb.append("GradeMix: ").append(getGradeMix()).append(", ");
        sb.append("HeadCount: ").append(getHeadCount()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("IncompleteEtes: ").append(getIncompleteEtes()).append(", ");
        sb.append("LossOfBillingAvgHc: ").append(getLossOfBillingAvgHc()).append(", ");
        sb.append("MaxPossibleBillingHrs: ").append(getMaxPossibleBillingHrs()).append(", ");
        sb.append("Month: ").append(getMonth()).append(", ");
        sb.append("Mts: ").append(getMts()).append(", ");
        sb.append("OffshoreBillingHc: ").append(getOffshoreBillingHc()).append(", ");
        sb.append("OnshoreBillingHc: ").append(getOnshoreBillingHc()).append(", ");
        sb.append("OpenDemandNew: ").append(getOpenDemandNew()).append(", ");
        sb.append("OpenDemandReplacement: ").append(getOpenDemandReplacement()).append(", ");
        sb.append("PartialBilling: ").append(getPartialBilling()).append(", ");
        sb.append("Team: ").append(getTeam());
        return sb.toString();
    }
    
}
