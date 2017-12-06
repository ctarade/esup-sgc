// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.esupportail.sgc.domain;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import org.esupportail.sgc.domain.Prefs;

privileged aspect Prefs_Roo_Finder {
    
    public static Long Prefs.countFindPrefsesByEppnEqualsAndKeyEquals(String eppn, String key) {
        if (eppn == null || eppn.length() == 0) throw new IllegalArgumentException("The eppn argument is required");
        if (key == null || key.length() == 0) throw new IllegalArgumentException("The key argument is required");
        EntityManager em = Prefs.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Prefs AS o WHERE o.eppn = :eppn  AND o.key = :key", Long.class);
        q.setParameter("eppn", eppn);
        q.setParameter("key", key);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Prefs> Prefs.findPrefsesByEppnEqualsAndKeyEquals(String eppn, String key) {
        if (eppn == null || eppn.length() == 0) throw new IllegalArgumentException("The eppn argument is required");
        if (key == null || key.length() == 0) throw new IllegalArgumentException("The key argument is required");
        EntityManager em = Prefs.entityManager();
        TypedQuery<Prefs> q = em.createQuery("SELECT o FROM Prefs AS o WHERE o.eppn = :eppn  AND o.key = :key", Prefs.class);
        q.setParameter("eppn", eppn);
        q.setParameter("key", key);
        return q;
    }
    
    public static TypedQuery<Prefs> Prefs.findPrefsesByEppnEqualsAndKeyEquals(String eppn, String key, String sortFieldName, String sortOrder) {
        if (eppn == null || eppn.length() == 0) throw new IllegalArgumentException("The eppn argument is required");
        if (key == null || key.length() == 0) throw new IllegalArgumentException("The key argument is required");
        EntityManager em = Prefs.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Prefs AS o WHERE o.eppn = :eppn  AND o.key = :key");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Prefs> q = em.createQuery(queryBuilder.toString(), Prefs.class);
        q.setParameter("eppn", eppn);
        q.setParameter("key", key);
        return q;
    }
    
}
