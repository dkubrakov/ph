// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.ph.service.impl;

import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.validation.MessageI18n;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import roo.ph.domain.Customer;
import roo.ph.domain.OrderBook;
import roo.ph.repository.CustomerRepository;
import roo.ph.service.impl.CustomerServiceImpl;

privileged aspect CustomerServiceImpl_Roo_Service_Impl {
    
    declare @type: CustomerServiceImpl: @Service;
    
    declare @type: CustomerServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CustomerRepository CustomerServiceImpl.customerRepository;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param customerRepository
     */
    @Autowired
    public CustomerServiceImpl.new(CustomerRepository customerRepository) {
        setCustomerRepository(customerRepository);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerRepository
     */
    public CustomerRepository CustomerServiceImpl.getCustomerRepository() {
        return customerRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerRepository
     */
    public void CustomerServiceImpl.setCustomerRepository(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     * @return Map
     */
    public Map<String, List<MessageI18n>> CustomerServiceImpl.validate(Customer customer) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
        return messages;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     */
    @Transactional
    public void CustomerServiceImpl.delete(Customer customer) {
        // Clear bidirectional many-to-one child relationship with OrderBook
        if (customer.getOrderBook() != null) {
            customer.getOrderBook().getCustomers().remove(customer);
        }
        
        getCustomerRepository().delete(customer);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Customer> CustomerServiceImpl.save(Iterable<Customer> entities) {
        return getCustomerRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void CustomerServiceImpl.delete(Iterable<Long> ids) {
        List<Customer> toDelete = getCustomerRepository().findAll(ids);
        getCustomerRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Customer
     */
    @Transactional
    public Customer CustomerServiceImpl.save(Customer entity) {
        return getCustomerRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Customer
     */
    public Customer CustomerServiceImpl.findOne(Long id) {
        return getCustomerRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Customer
     */
    public Customer CustomerServiceImpl.findOneForUpdate(Long id) {
        return getCustomerRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Customer> CustomerServiceImpl.findAll(Iterable<Long> ids) {
        return getCustomerRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Customer> CustomerServiceImpl.findAll() {
        return getCustomerRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long CustomerServiceImpl.count() {
        return getCustomerRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Customer> CustomerServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getCustomerRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Customer> CustomerServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getCustomerRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderBook
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Customer> CustomerServiceImpl.findByOrderBook(OrderBook orderBook, GlobalSearch globalSearch, Pageable pageable) {
        return getCustomerRepository().findByOrderBook(orderBook, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderBook
     * @return Long
     */
    public long CustomerServiceImpl.countByOrderBook(OrderBook orderBook) {
        return getCustomerRepository().countByOrderBook(orderBook);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param name
     * @param pageable
     * @return Page
     */
    public Page<Customer> CustomerServiceImpl.findByName(String name, Pageable pageable) {
        return getCustomerRepository().findByName(name, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param name
     * @return Long
     */
    public long CustomerServiceImpl.countByName(String name) {
        return getCustomerRepository().countByName(name);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Customer> CustomerServiceImpl.getEntityType() {
        return Customer.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> CustomerServiceImpl.getIdType() {
        return Long.class;
    }
    
}
