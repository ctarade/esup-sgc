// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.esupportail.sgc.services.crous;

import java.util.Date;
import org.esupportail.sgc.domain.Card;
import org.esupportail.sgc.domain.User;
import org.esupportail.sgc.services.crous.CrousErrorLog;

privileged aspect CrousErrorLog_Roo_JavaBean {
    
    public Card CrousErrorLog.getCard() {
        return this.card;
    }
    
    public void CrousErrorLog.setCard(Card card) {
        this.card = card;
    }
    
    public User CrousErrorLog.getUserAccount() {
        return this.userAccount;
    }
    
    public void CrousErrorLog.setUserAccount(User userAccount) {
        this.userAccount = userAccount;
    }
    
    public String CrousErrorLog.getCode() {
        return this.code;
    }
    
    public void CrousErrorLog.setCode(String code) {
        this.code = code;
    }
    
    public String CrousErrorLog.getMessage() {
        return this.message;
    }
    
    public void CrousErrorLog.setMessage(String message) {
        this.message = message;
    }
    
    public String CrousErrorLog.getField() {
        return this.field;
    }
    
    public void CrousErrorLog.setField(String field) {
        this.field = field;
    }
    
    public Date CrousErrorLog.getDate() {
        return this.date;
    }
    
    public void CrousErrorLog.setDate(Date date) {
        this.date = date;
    }
    
}
