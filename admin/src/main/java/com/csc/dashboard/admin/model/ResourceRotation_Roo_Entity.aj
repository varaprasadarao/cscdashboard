// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

privileged aspect ResourceRotation_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager ResourceRotation.entityManager;
    
    @Transactional
    public void ResourceRotation.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ResourceRotation.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ResourceRotation attached = ResourceRotation.findResourceRotation(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ResourceRotation.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ResourceRotation.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ResourceRotation ResourceRotation.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ResourceRotation merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager ResourceRotation.entityManager() {
        EntityManager em = new ResourceRotation().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ResourceRotation.countResourceRotations(String username) {
    	String query = "SELECT COUNT(o) FROM ResourceRotation o, Account a, Team t, UserTeam u where a.id=t.account and t.id = u.teamId and u.username = '"+username+"' order by o.id desc";	
        return entityManager().createQuery(query, Long.class).getSingleResult();
    }
    
    public static List<ResourceRotation> ResourceRotation.findAllResourceRotations(String username) {
    	String query = "SELECT Distinct(o) FROM ResourceRotation o, Account a, Team t, UserTeam u where a.id=t.account and t.id = u.teamId and u.username = '"+username+"' order by o.id desc";	
        return entityManager().createQuery(query, ResourceRotation.class).getResultList();
    }
    
    public static ResourceRotation ResourceRotation.findResourceRotation(Integer id) {
        if (id == null) return null;
        return entityManager().find(ResourceRotation.class, id);
    }
    
    public static List<ResourceRotation> ResourceRotation.findResourceRotationEntries(int firstResult, int maxResults,String username) {
    	String query = "SELECT Distinct(o) FROM ResourceRotation o, Account a, Team t, UserTeam u where a.id=t.account and t.id = u.teamId and u.username = '"+username+"' order by o.id desc";	
        return entityManager().createQuery(query, ResourceRotation.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}