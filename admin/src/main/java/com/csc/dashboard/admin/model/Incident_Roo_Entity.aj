// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

privileged aspect Incident_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager Incident.entityManager;
    
    @Transactional
    public void Incident.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Incident.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Incident attached = Incident.findIncident(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Incident.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Incident.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Incident Incident.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Incident merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Incident.entityManager() {
        EntityManager em = new Incident().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Incident.countIncidents() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Incident o", Long.class).getSingleResult();
    }
    
    public static List<Incident> Incident.findAllIncidents() {
        return entityManager().createQuery("SELECT o FROM Incident o", Incident.class).getResultList();
    }
    
    public static Incident Incident.findIncident(Integer id) {
        if (id == null) return null;
        return entityManager().find(Incident.class, id);
    }
    
    public static List<Incident> Incident.findIncidentEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Incident o", Incident.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
