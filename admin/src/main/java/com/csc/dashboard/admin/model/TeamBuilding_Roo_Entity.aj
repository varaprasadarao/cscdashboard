// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import com.csc.dashboard.admin.model.TeamBuilding;
import java.lang.Integer;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TeamBuilding_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager TeamBuilding.entityManager;
    
    @Transactional
    public void TeamBuilding.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TeamBuilding.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TeamBuilding attached = TeamBuilding.findTeamBuilding(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TeamBuilding.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TeamBuilding.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TeamBuilding TeamBuilding.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TeamBuilding merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager TeamBuilding.entityManager() {
        EntityManager em = new TeamBuilding().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TeamBuilding.countTeamBuildings() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TeamBuilding o", Long.class).getSingleResult();
    }
    
    public static List<TeamBuilding> TeamBuilding.findAllTeamBuildings() {
        return entityManager().createQuery("SELECT o FROM TeamBuilding o", TeamBuilding.class).getResultList();
    }
    
    public static TeamBuilding TeamBuilding.findTeamBuilding(Integer id) {
        if (id == null) return null;
        return entityManager().find(TeamBuilding.class, id);
    }
    
    public static List<TeamBuilding> TeamBuilding.findTeamBuildingEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TeamBuilding o", TeamBuilding.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
