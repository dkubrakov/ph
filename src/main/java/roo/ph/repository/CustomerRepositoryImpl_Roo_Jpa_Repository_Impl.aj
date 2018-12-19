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
import org.springframework.util.Assert;
import roo.ph.domain.Customer;
import roo.ph.domain.OrderBook;
import roo.ph.domain.QCustomer;
import roo.ph.repository.CustomerRepositoryImpl;

privileged aspect CustomerRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare @type: CustomerRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerRepositoryImpl.NAME = "name";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerRepositoryImpl.ADDRESS = "address";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerRepositoryImpl.PHONE = "phone";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerRepositoryImpl.ORDER_BOOK = "orderBook";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Customer> CustomerRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QCustomer customer = QCustomer.customer;
        
        JPQLQuery<Customer> query = from(customer);
        
        Path<?>[] paths = new Path<?>[] {customer.name,customer.address,customer.phone,customer.orderBook};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NAME, customer.name)
			.map(ADDRESS, customer.address)
			.map(PHONE, customer.phone)
			.map(ORDER_BOOK, customer.orderBook);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, customer);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Customer> CustomerRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QCustomer customer = QCustomer.customer;
        
        JPQLQuery<Customer> query = from(customer);
        
        Path<?>[] paths = new Path<?>[] {customer.name,customer.address,customer.phone,customer.orderBook};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(customer.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NAME, customer.name)
			.map(ADDRESS, customer.address)
			.map(PHONE, customer.phone)
			.map(ORDER_BOOK, customer.orderBook);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, customer);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderBook
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Customer> CustomerRepositoryImpl.findByOrderBook(OrderBook orderBook, GlobalSearch globalSearch, Pageable pageable) {
        
        QCustomer customer = QCustomer.customer;
        
        JPQLQuery<Customer> query = from(customer);
        
        Assert.notNull(orderBook, "orderBook is required");
        
        query.where(customer.orderBook.eq(orderBook));
        Path<?>[] paths = new Path<?>[] {customer.name,customer.address,customer.phone,customer.orderBook};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NAME, customer.name)
			.map(ADDRESS, customer.address)
			.map(PHONE, customer.phone)
			.map(ORDER_BOOK, customer.orderBook);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, customer);
    }
    
}