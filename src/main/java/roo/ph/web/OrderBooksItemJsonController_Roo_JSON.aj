// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.ph.web;

import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;
import roo.ph.domain.OrderBook;
import roo.ph.service.api.OrderBookService;
import roo.ph.web.OrderBooksItemJsonController;

privileged aspect OrderBooksItemJsonController_Roo_JSON {
    
    declare @type: OrderBooksItemJsonController: @RestController;
    
    declare @type: OrderBooksItemJsonController: @RequestMapping(value = "/orderbooks/{orderBook}", name = "OrderBooksItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private OrderBookService OrderBooksItemJsonController.orderBookService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param orderBookService
     */
    @Autowired
    public OrderBooksItemJsonController.new(OrderBookService orderBookService) {
        this.orderBookService = orderBookService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return OrderBookService
     */
    public OrderBookService OrderBooksItemJsonController.getOrderBookService() {
        return orderBookService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderBookService
     */
    public void OrderBooksItemJsonController.setOrderBookService(OrderBookService orderBookService) {
        this.orderBookService = orderBookService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return OrderBook
     */
    @ModelAttribute
    public OrderBook OrderBooksItemJsonController.getOrderBook(@PathVariable("orderBook") Long id) {
        OrderBook orderBook = orderBookService.findOne(id);
        if (orderBook == null) {
            throw new NotFoundException(String.format("OrderBook with identifier '%s' not found",id));
        }
        return orderBook;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderBook
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> OrderBooksItemJsonController.show(@ModelAttribute OrderBook orderBook) {
        return ResponseEntity.ok(orderBook);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderBook
     * @return UriComponents
     */
    public static UriComponents OrderBooksItemJsonController.showURI(OrderBook orderBook) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(OrderBooksItemJsonController.class).show(orderBook))
            .buildAndExpand(orderBook.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedOrderBook
     * @param orderBook
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> OrderBooksItemJsonController.update(@ModelAttribute OrderBook storedOrderBook, @Valid @RequestBody OrderBook orderBook, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        orderBook.setId(storedOrderBook.getId());
        getOrderBookService().save(orderBook);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderBook
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> OrderBooksItemJsonController.delete(@ModelAttribute OrderBook orderBook) {
        getOrderBookService().delete(orderBook);
        return ResponseEntity.ok().build();
    }
    
}
