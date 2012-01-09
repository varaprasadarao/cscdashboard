// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

privileged aspect Billing_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager Billing.entityManager;
    
    @Transactional
    public void Billing.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Billing.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Billing attached = Billing.findBilling(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Billing.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Billing.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Billing Billing.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Billing merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Billing.entityManager() {
        EntityManager em = new Billing().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Billing.countBillings(String username) {
    	String query = "SELECT COUNT(o) FROM Billing o, UserTeam t where o.team = t.teamId and t.username = '"+username+"' order by id desc";	
        return entityManager().createQuery(query, Long.class).getSingleResult();
    }
    
    public static List<Billing> Billing.findAllBillings(String username) {
    	String query = "SELECT o FROM Billing o, UserTeam t where o.team = t.teamId and t.username = '"+username+"' order by id desc";	
        return entityManager().createQuery(query, Billing.class).getResultList();
    }
    
    public static Billing Billing.findBilling(Integer id) {
        if (id == null) return null;
        return entityManager().find(Billing.class, id);
    }
    
    public static List<Billing> Billing.findBillingEntries(int firstResult, int maxResults,String username) {
    	String query = "SELECT o FROM Billing o, UserTeam t where o.team = t.teamId and t.username = '"+username+"' order by id desc";	
        return entityManager().createQuery(query, Billing.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}