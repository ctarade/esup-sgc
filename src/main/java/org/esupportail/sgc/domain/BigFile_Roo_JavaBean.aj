// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.esupportail.sgc.domain;

import java.sql.Blob;
import org.esupportail.sgc.domain.BigFile;

privileged aspect BigFile_Roo_JavaBean {
    
    public Blob BigFile.getBinaryFile() {
        return this.binaryFile;
    }
    
    public void BigFile.setBinaryFile(Blob binaryFile) {
        this.binaryFile = binaryFile;
    }
    
    public String BigFile.getMd5() {
        return this.md5;
    }
    
    public void BigFile.setMd5(String md5) {
        this.md5 = md5;
    }
    
}
