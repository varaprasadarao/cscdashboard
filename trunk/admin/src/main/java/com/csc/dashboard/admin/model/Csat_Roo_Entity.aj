// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import com.csc.dashboard.admin.model.Csat;
import java.lang.Integer;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Csat_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager Csat.entityManager;
    
    @Transactional
    public void Csat.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Csat.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Csat attached = Csat.findCsat(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Csat.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Csat.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Csat Csat.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Csat merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Csat.entityManager() {
        EntityManager em = new Csat().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Csat.countCsats() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Csat o", Long.class).getSingleResult();
    }
    
    public static List<Csat> Csat.findAllCsats() {
        return entityManager().createQuery("SELECT o FROM Csat o", Csat.class).getResultList();
    }
    
    public static Csat Csat.findCsat(Integer id) {
        if (id == null) return null;
        return entityManager().find(Csat.class, id);
    }
    
    public static List<Csat> Csat.findCsatEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Csat o", Csat.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
