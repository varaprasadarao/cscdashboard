// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;


privileged aspect Team_Roo_ToString {
    
    public String Team.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Account: ").append(getAccount()).append(", ");
        sb.append("DispOrder: ").append(getDispOrder()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Name: ").append(getName());
        return sb.toString();
    }
    
}