// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.ph.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;
import roo.ph.domain.Author;
import roo.ph.domain.Book;
import roo.ph.domain.OrderBook;
import roo.ph.repository.BookRepository;

privileged aspect BookRepository_Roo_Jpa_Repository {
    
    declare @type: BookRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param author
     * @return Long
     */
    public abstract long BookRepository.countByAuthor(Author author);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderBooks
     * @return Long
     */
    public abstract long BookRepository.countByOrderBooksContains(OrderBook orderBooks);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param name
     * @param pageable
     * @return Page
     */
    public abstract Page<Book> BookRepository.findByName(String name, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param name
     * @return Long
     */
    public abstract long BookRepository.countByName(String name);
    
}