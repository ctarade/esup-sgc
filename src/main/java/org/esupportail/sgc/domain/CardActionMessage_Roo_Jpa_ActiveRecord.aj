// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.esupportail.sgc.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.esupportail.sgc.domain.CardActionMessage;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CardActionMessage_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager CardActionMessage.entityManager;
    
    public static final List<String> CardActionMessage.fieldNames4OrderClauseFilter = java.util.Arrays.asList("etatInitial", "etatFinal", "message", "auto", "defaut");
    
    public static final EntityManager CardActionMessage.entityManager() {
        EntityManager em = new CardActionMessage().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long CardActionMessage.countCardActionMessages() {
        return entityManager().createQuery("SELECT COUNT(o) FROM CardActionMessage o", Long.class).getSingleResult();
    }
    
    public static List<CardActionMessage> CardActionMessage.findAllCardActionMessages() {
        return entityManager().createQuery("SELECT o FROM CardActionMessage o", CardActionMessage.class).getResultList();
    }
    
    public static List<CardActionMessage> CardActionMessage.findAllCardActionMessages(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CardActionMessage o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CardActionMessage.class).getResultList();
    }
    
    public static CardActionMessage CardActionMessage.findCardActionMessage(Long id) {
        if (id == null) return null;
        return entityManager().find(CardActionMessage.class, id);
    }
    
    public static List<CardActionMessage> CardActionMessage.findCardActionMessageEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM CardActionMessage o", CardActionMessage.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<CardActionMessage> CardActionMessage.findCardActionMessageEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CardActionMessage o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CardActionMessage.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void CardActionMessage.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void CardActionMessage.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            CardActionMessage attached = CardActionMessage.findCardActionMessage(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void CardActionMessage.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void CardActionMessage.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public CardActionMessage CardActionMessage.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        CardActionMessage merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
