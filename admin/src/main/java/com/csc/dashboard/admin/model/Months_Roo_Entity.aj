// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import com.csc.dashboard.admin.model.Months;
import java.lang.Integer;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Months_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager Months.entityManager;
    
    @Transactional
    public void Months.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Months.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Months attached = Months.findMonths(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Months.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Months.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Months Months.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Months merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Months.entityManager() {
        EntityManager em = new Months().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Months.countMonthses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Months o", Long.class).getSingleResult();
    }
    
    public static List<Months> Months.findAllMonthses() {
        return entityManager().createQuery("SELECT o FROM Months o", Months.class).getResultList();
    }
    
    public static Months Months.findMonths(Integer id) {
        if (id == null) return null;
        return entityManager().find(Months.class, id);
    }
    
    public static List<Months> Months.findMonthsEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Months o", Months.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
