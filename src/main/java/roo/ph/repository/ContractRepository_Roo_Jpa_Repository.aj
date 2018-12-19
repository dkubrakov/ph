// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.ph.repository;

import org.springframework.transaction.annotation.Transactional;
import roo.ph.domain.Author;
import roo.ph.domain.Employer;
import roo.ph.repository.ContractRepository;

privileged aspect ContractRepository_Roo_Jpa_Repository {
    
    declare @type: ContractRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param author
     * @return Long
     */
    public abstract long ContractRepository.countByAuthor(Author author);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param employer
     * @return Long
     */
    public abstract long ContractRepository.countByEmployer(Employer employer);
    
}