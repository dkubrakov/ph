// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.ph.repository;

import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;
import roo.ph.domain.Employer;
import roo.ph.domain.QEmployer;
import roo.ph.repository.EmployerRepositoryImpl;

privileged aspect EmployerRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare @type: EmployerRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String EmployerRepositoryImpl.NAME = "name";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String EmployerRepositoryImpl.ADDRESS = "address";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String EmployerRepositoryImpl.PHONE = "phone";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String EmployerRepositoryImpl.BIRTHDATE = "birthdate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String EmployerRepositoryImpl.EMPLOYEE_STATUS = "employeeStatus";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Employer> EmployerRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QEmployer employer = QEmployer.employer;
        
        JPQLQuery<Employer> query = from(employer);
        
        Path<?>[] paths = new Path<?>[] {employer.name,employer.address,employer.phone,employer.birthdate,employer.employeeStatus};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NAME, employer.name)
			.map(ADDRESS, employer.address)
			.map(PHONE, employer.phone)
			.map(BIRTHDATE, employer.birthdate)
			.map(EMPLOYEE_STATUS, employer.employeeStatus);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, employer);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Employer> EmployerRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QEmployer employer = QEmployer.employer;
        
        JPQLQuery<Employer> query = from(employer);
        
        Path<?>[] paths = new Path<?>[] {employer.name,employer.address,employer.phone,employer.birthdate,employer.employeeStatus};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(employer.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NAME, employer.name)
			.map(ADDRESS, employer.address)
			.map(PHONE, employer.phone)
			.map(BIRTHDATE, employer.birthdate)
			.map(EMPLOYEE_STATUS, employer.employeeStatus);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, employer);
    }
    
}