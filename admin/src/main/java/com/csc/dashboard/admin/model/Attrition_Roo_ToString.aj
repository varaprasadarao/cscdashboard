// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;


privileged aspect Attrition_Roo_ToString {
    
    public String Attrition.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Account: ").append(getAccount()).append(", ");
        sb.append("AttritionNum: ").append(getAttritionNum()).append(", ");
        sb.append("ClosingHeadCount: ").append(getClosingHeadCount()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Month: ").append(getMonth()).append(", ");
        sb.append("OpeningHeadCount: ").append(getOpeningHeadCount());
        return sb.toString();
    }
    
}
