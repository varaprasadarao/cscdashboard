// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

privileged aspect AssessmentPrograms_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager AssessmentPrograms.entityManager;
    
    @Transactional
    public void AssessmentPrograms.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void AssessmentPrograms.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            AssessmentPrograms attached = AssessmentPrograms.findAssessmentPrograms(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void AssessmentPrograms.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void AssessmentPrograms.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public AssessmentPrograms AssessmentPrograms.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        AssessmentPrograms merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager AssessmentPrograms.entityManager() {
        EntityManager em = new AssessmentPrograms().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long AssessmentPrograms.countAssessmentProgramses(String username) {
    	String query = "SELECT COUNT(o) FROM AssessmentPrograms o, UserTeam t where o.team = t.teamId and t.username = '"+username+"' order by id desc";	
        return entityManager().createQuery(query, Long.class).getSingleResult();
    }
    
    public static List<AssessmentPrograms> AssessmentPrograms.findAllAssessmentProgramses(String username) {
    	String query = "SELECT o FROM AssessmentPrograms o, UserTeam t where o.team = t.teamId and t.username = '"+username+"' order by id desc";
        return entityManager().createQuery(query, AssessmentPrograms.class).getResultList();
    }
    
    public static AssessmentPrograms AssessmentPrograms.findAssessmentPrograms(Integer id) {
        if (id == null) return null;
        return entityManager().find(AssessmentPrograms.class, id);
    }
    
    public static List<AssessmentPrograms> AssessmentPrograms.findAssessmentProgramsEntries(int firstResult, int maxResults,String username) {
    	String query = "SELECT o FROM AssessmentPrograms o, UserTeam t where o.team = t.teamId and t.username = '"+username+"' order by id desc";
        return entityManager().createQuery(query, AssessmentPrograms.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
