// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;


privileged aspect SlaAdherence_Roo_ToString {
    
    public String SlaAdherence.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Month: ").append(getMonth()).append(", ");
        sb.append("Sev12: ").append(getSev12()).append(", ");
        sb.append("Sev12sla: ").append(getSev12sla()).append(", ");
        sb.append("Sev12success: ").append(getSev12success()).append(", ");
        sb.append("Sev3: ").append(getSev3()).append(", ");
        sb.append("Sev3sla: ").append(getSev3sla()).append(", ");
        sb.append("Sev3success: ").append(getSev3success()).append(", ");
        sb.append("Sev4: ").append(getSev4()).append(", ");
        sb.append("Sev4sla: ").append(getSev4sla()).append(", ");
        sb.append("Sev4success: ").append(getSev4success()).append(", ");
        sb.append("Sev5: ").append(getSev5()).append(", ");
        sb.append("Sev5sla: ").append(getSev5sla()).append(", ");
        sb.append("Sev5success: ").append(getSev5success()).append(", ");
        sb.append("Team: ").append(getTeam());
        return sb.toString();
    }
    
}
