// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import com.csc.dashboard.admin.model.VerticalInit;
import java.lang.Integer;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect VerticalInit_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager VerticalInit.entityManager;
    
    @Transactional
    public void VerticalInit.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void VerticalInit.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            VerticalInit attached = VerticalInit.findVerticalInit(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void VerticalInit.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void VerticalInit.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public VerticalInit VerticalInit.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        VerticalInit merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager VerticalInit.entityManager() {
        EntityManager em = new VerticalInit().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long VerticalInit.countVerticalInits() {
        return entityManager().createQuery("SELECT COUNT(o) FROM VerticalInit o", Long.class).getSingleResult();
    }
    
    public static List<VerticalInit> VerticalInit.findAllVerticalInits() {
        return entityManager().createQuery("SELECT o FROM VerticalInit o", VerticalInit.class).getResultList();
    }
    
    public static VerticalInit VerticalInit.findVerticalInit(Integer id) {
        if (id == null) return null;
        return entityManager().find(VerticalInit.class, id);
    }
    
    public static List<VerticalInit> VerticalInit.findVerticalInitEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM VerticalInit o", VerticalInit.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
