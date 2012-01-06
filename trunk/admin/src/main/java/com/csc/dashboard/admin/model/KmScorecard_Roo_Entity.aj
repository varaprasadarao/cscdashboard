// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.model;

import com.csc.dashboard.admin.model.KmScorecard;
import java.lang.Integer;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect KmScorecard_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager KmScorecard.entityManager;
    
    @Transactional
    public void KmScorecard.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void KmScorecard.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            KmScorecard attached = KmScorecard.findKmScorecard(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void KmScorecard.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void KmScorecard.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public KmScorecard KmScorecard.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        KmScorecard merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager KmScorecard.entityManager() {
        EntityManager em = new KmScorecard().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long KmScorecard.countKmScorecards(String username) {
    	String query = "SELECT COUNT(o) FROM KmScorecard o, UserTeam t where o.team = t.teamId and t.username = '"+username+"' order by id desc";	
        return entityManager().createQuery(query, Long.class).getSingleResult();
    }
    
    public static List<KmScorecard> KmScorecard.findAllKmScorecards(String username) {
    	String query = "SELECT o FROM KmScorecard o, UserTeam t where o.team = t.teamId and t.username = '"+username+"' order by id desc";	
        return entityManager().createQuery(query, KmScorecard.class).getResultList();
    }
    
    public static KmScorecard KmScorecard.findKmScorecard(Integer id) {
        if (id == null) return null;
        return entityManager().find(KmScorecard.class, id);
    }
    
    public static List<KmScorecard> KmScorecard.findKmScorecardEntries(int firstResult, int maxResults, String username) {
    	String query = "SELECT o FROM KmScorecard o, UserTeam t where o.team = t.teamId and t.username = '"+username+"' order by id desc";	
        return entityManager().createQuery(query, KmScorecard.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
