// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.ph.web;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.util.Set;
import roo.ph.domain.Contract;
import roo.ph.web.EmployerJsonMixin;

privileged aspect EmployerJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Contract> EmployerJsonMixin.contracts;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Contract> EmployerJsonMixin.getContracts() {
        return contracts;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contracts
     */
    public void EmployerJsonMixin.setContracts(Set<Contract> contracts) {
        this.contracts = contracts;
    }
    
}
