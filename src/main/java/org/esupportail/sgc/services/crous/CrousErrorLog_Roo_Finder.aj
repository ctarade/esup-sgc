// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.esupportail.sgc.services.crous;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import org.esupportail.sgc.domain.User;
import org.esupportail.sgc.services.crous.CrousErrorLog;

privileged aspect CrousErrorLog_Roo_Finder {
    
    public static Long CrousErrorLog.countFindCrousErrorLogsByUserAccount(User userAccount) {
        if (userAccount == null) throw new IllegalArgumentException("The userAccount argument is required");
        EntityManager em = CrousErrorLog.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM CrousErrorLog AS o WHERE o.userAccount = :userAccount", Long.class);
        q.setParameter("userAccount", userAccount);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<CrousErrorLog> CrousErrorLog.findCrousErrorLogsByUserAccount(User userAccount) {
        if (userAccount == null) throw new IllegalArgumentException("The userAccount argument is required");
        EntityManager em = CrousErrorLog.entityManager();
        TypedQuery<CrousErrorLog> q = em.createQuery("SELECT o FROM CrousErrorLog AS o WHERE o.userAccount = :userAccount", CrousErrorLog.class);
        q.setParameter("userAccount", userAccount);
        return q;
    }
    
    public static TypedQuery<CrousErrorLog> CrousErrorLog.findCrousErrorLogsByUserAccount(User userAccount, String sortFieldName, String sortOrder) {
        if (userAccount == null) throw new IllegalArgumentException("The userAccount argument is required");
        EntityManager em = CrousErrorLog.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM CrousErrorLog AS o WHERE o.userAccount = :userAccount");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<CrousErrorLog> q = em.createQuery(queryBuilder.toString(), CrousErrorLog.class);
        q.setParameter("userAccount", userAccount);
        return q;
    }
    
}
