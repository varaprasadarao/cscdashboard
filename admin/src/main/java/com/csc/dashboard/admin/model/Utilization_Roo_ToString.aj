// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;


privileged aspect Utilization_Roo_ToString {
    
    public String Utilization.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AdHoursDevl: ").append(getAdHoursDevl()).append(", ");
        sb.append("AmsHoursMaint: ").append(getAmsHoursMaint()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("IdleHours: ").append(getIdleHours()).append(", ");
        sb.append("Month: ").append(getMonth()).append(", ");
        sb.append("ObfHours: ").append(getObfHours()).append(", ");
        sb.append("Team: ").append(getTeam()).append(", ");
        sb.append("Utilization: ").append(getUtilization()).append(", ");
        sb.append("ValueAdds: ").append(getValueAdds());
        return sb.toString();
    }
    
}
