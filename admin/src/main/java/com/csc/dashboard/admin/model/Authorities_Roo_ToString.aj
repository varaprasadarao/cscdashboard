// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;


privileged aspect Authorities_Roo_ToString {
    
    public String Authorities.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId());
        return sb.toString();
    }
    
}
