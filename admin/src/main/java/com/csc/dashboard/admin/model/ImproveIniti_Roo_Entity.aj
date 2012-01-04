// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import com.csc.dashboard.admin.model.ImproveIniti;
import java.lang.Integer;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ImproveIniti_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager ImproveIniti.entityManager;
    
    @Transactional
    public void ImproveIniti.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ImproveIniti.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ImproveIniti attached = ImproveIniti.findImproveIniti(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ImproveIniti.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ImproveIniti.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ImproveIniti ImproveIniti.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ImproveIniti merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager ImproveIniti.entityManager() {
        EntityManager em = new ImproveIniti().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ImproveIniti.countImproveInitis() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ImproveIniti o", Long.class).getSingleResult();
    }
    
    public static List<ImproveIniti> ImproveIniti.findAllImproveInitis() {
        return entityManager().createQuery("SELECT o FROM ImproveIniti o", ImproveIniti.class).getResultList();
    }
    
    public static ImproveIniti ImproveIniti.findImproveIniti(Integer id) {
        if (id == null) return null;
        return entityManager().find(ImproveIniti.class, id);
    }
    
    public static List<ImproveIniti> ImproveIniti.findImproveInitiEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ImproveIniti o", ImproveIniti.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
