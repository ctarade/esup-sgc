// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.esupportail.sgc.domain;

import java.util.Date;
import org.esupportail.sgc.domain.Log;

privileged aspect Log_Roo_JavaBean {
    
    public Date Log.getLogDate() {
        return this.logDate;
    }
    
    public void Log.setLogDate(Date logDate) {
        this.logDate = logDate;
    }
    
    public String Log.getEppn() {
        return this.eppn;
    }
    
    public void Log.setEppn(String eppn) {
        this.eppn = eppn;
    }
    
    public String Log.getEppnCible() {
        return this.eppnCible;
    }
    
    public void Log.setEppnCible(String eppnCible) {
        this.eppnCible = eppnCible;
    }
    
    public String Log.getType() {
        return this.type;
    }
    
    public void Log.setType(String type) {
        this.type = type;
    }
    
    public Long Log.getCardId() {
        return this.cardId;
    }
    
    public void Log.setCardId(Long cardId) {
        this.cardId = cardId;
    }
    
    public String Log.getAction() {
        return this.action;
    }
    
    public void Log.setAction(String action) {
        this.action = action;
    }
    
    public String Log.getRetCode() {
        return this.retCode;
    }
    
    public void Log.setRetCode(String retCode) {
        this.retCode = retCode;
    }
    
    public String Log.getComment() {
        return this.comment;
    }
    
    public void Log.setComment(String comment) {
        this.comment = comment;
    }
    
    public String Log.getRemoteAddress() {
        return this.remoteAddress;
    }
    
    public void Log.setRemoteAddress(String remoteAddress) {
        this.remoteAddress = remoteAddress;
    }
    
}
