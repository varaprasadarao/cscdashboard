// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;


privileged aspect ContributionToTop10_Roo_ToString {
    
    public String ContributionToTop10.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Month: ").append(getMonth()).append(", ");
        sb.append("NameOfContributor: ").append(getNameOfContributor()).append(", ");
        sb.append("PositionInTop10: ").append(getPositionInTop10()).append(", ");
        sb.append("Team: ").append(getTeam());
        return sb.toString();
    }
    
}
