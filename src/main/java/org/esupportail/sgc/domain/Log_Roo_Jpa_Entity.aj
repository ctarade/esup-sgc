// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.esupportail.sgc.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import org.esupportail.sgc.domain.Log;

privileged aspect Log_Roo_Jpa_Entity {
    
    declare @type: Log: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Log.id;
    
    @Version
    @Column(name = "version")
    private Integer Log.version;
    
    public Long Log.getId() {
        return this.id;
    }
    
    public void Log.setId(Long id) {
        this.id = id;
    }
    
    public Integer Log.getVersion() {
        return this.version;
    }
    
    public void Log.setVersion(Integer version) {
        this.version = version;
    }
    
}
