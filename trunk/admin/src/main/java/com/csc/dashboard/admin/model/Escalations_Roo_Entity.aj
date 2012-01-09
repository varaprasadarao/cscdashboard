// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

privileged aspect Escalations_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager Escalations.entityManager;
    
    @Transactional
    public void Escalations.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Escalations.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Escalations attached = Escalations.findEscalations(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Escalations.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Escalations.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Escalations Escalations.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Escalations merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Escalations.entityManager() {
        EntityManager em = new Escalations().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Escalations.countEscalationses(String username) {
    	String query = "SELECT COUNT(o) FROM Escalations o, Account a, Team t, UserTeam u where a.id=t.account and t.id = u.teamId and u.username = '"+username+"' order by o.id desc";	
        return entityManager().createQuery(query, Long.class).getSingleResult();
    }
    
    public static List<Escalations> Escalations.findAllEscalationses(String username) {
    	String query = "SELECT Distinct(o) FROM Escalations o, Account a, Team t, UserTeam u where a.id=t.account and t.id = u.teamId and u.username = '"+username+"' order by o.id desc";	
        return entityManager().createQuery(query, Escalations.class).getResultList();
    }
    
    public static Escalations Escalations.findEscalations(Integer id) {
        if (id == null) return null;
        return entityManager().find(Escalations.class, id);
    }
    
    public static List<Escalations> Escalations.findEscalationsEntries(int firstResult, int maxResults,String username) {
    	String query = "SELECT Distinct(o) FROM Escalations o, Account a, Team t, UserTeam u where a.id=t.account and t.id = u.teamId and u.username = '"+username+"' order by o.id desc";	
        return entityManager().createQuery(query, Escalations.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
