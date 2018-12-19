// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.ph.web;

import io.springlets.data.web.validation.GenericValidator;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import io.springlets.web.mvc.util.concurrency.ConcurrencyCallback;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import io.springlets.web.mvc.util.concurrency.ConcurrencyTemplate;
import java.util.Locale;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;
import roo.ph.domain.OrderBook;
import roo.ph.service.api.OrderBookService;
import roo.ph.web.OrderBooksCollectionThymeleafController;
import roo.ph.web.OrderBooksItemThymeleafController;
import roo.ph.web.OrderBooksItemThymeleafLinkFactory;

privileged aspect OrderBooksItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: OrderBooksItemThymeleafController: @Controller;
    
    declare @type: OrderBooksItemThymeleafController: @RequestMapping(value = "/orderbooks/{orderBook}", name = "OrderBooksItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private OrderBookService OrderBooksItemThymeleafController.orderBookService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource OrderBooksItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<OrderBooksItemThymeleafController> OrderBooksItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<OrderBooksCollectionThymeleafController> OrderBooksItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private final ConcurrencyTemplate<OrderBook> OrderBooksItemThymeleafController.concurrencyTemplate = new ConcurrencyTemplate<OrderBook>(this);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param orderBookService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public OrderBooksItemThymeleafController.new(OrderBookService orderBookService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setOrderBookService(orderBookService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(OrderBooksItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(OrderBooksCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return OrderBookService
     */
    public OrderBookService OrderBooksItemThymeleafController.getOrderBookService() {
        return orderBookService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderBookService
     */
    public void OrderBooksItemThymeleafController.setOrderBookService(OrderBookService orderBookService) {
        this.orderBookService = orderBookService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource OrderBooksItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void OrderBooksItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<OrderBooksItemThymeleafController> OrderBooksItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void OrderBooksItemThymeleafController.setItemLink(MethodLinkBuilderFactory<OrderBooksItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<OrderBooksCollectionThymeleafController> OrderBooksItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void OrderBooksItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<OrderBooksCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return OrderBook
     */
    @ModelAttribute
    public OrderBook OrderBooksItemThymeleafController.getOrderBook(@PathVariable("orderBook") Long id, Locale locale, HttpMethod method) {
        OrderBook orderBook = null;
        if (HttpMethod.PUT.equals(method)) {
            orderBook = orderBookService.findOneForUpdate(id);
        } else {
            orderBook = orderBookService.findOne(id);
        }
        
        if (orderBook == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"OrderBook", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return orderBook;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderBook
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView OrderBooksItemThymeleafController.show(@ModelAttribute OrderBook orderBook, Model model) {
        model.addAttribute("orderBook", orderBook);
        return new ModelAndView("orderbooks/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderBook
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView OrderBooksItemThymeleafController.showInline(@ModelAttribute OrderBook orderBook, Model model) {
        model.addAttribute("orderBook", orderBook);
        return new ModelAndView("orderbooks/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void OrderBooksItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("orderDate_date_format", "dd/MM/yyyy");
        model.addAttribute("deliverDate_date_format", "dd/MM/yyyy");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void OrderBooksItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConcurrencyTemplate
     */
    public ConcurrencyTemplate<OrderBook> OrderBooksItemThymeleafController.getConcurrencyTemplate() {
        return concurrencyTemplate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String OrderBooksItemThymeleafController.getModelName() {
        return "orderBook";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String OrderBooksItemThymeleafController.getEditViewPath() {
        return "orderbooks/edit";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param record
     * @return Integer
     */
    public Integer OrderBooksItemThymeleafController.getLastVersion(OrderBook record) {
        return getOrderBookService().findOne(record.getId()).getVersion();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @param model
     * @return ModelAndView
     */
    public ModelAndView OrderBooksItemThymeleafController.populateAndGetFormView(OrderBook entity, Model model) {
        // Populate the form with all the necessary elements
        populateForm(model);
        // Add concurrency attribute to the model to show the concurrency form
        // in the current edit view
        model.addAttribute("concurrency", true);
        // Add the new version value to the model.
        model.addAttribute("newVersion", getLastVersion(entity));
        // Add the current pet values to maintain the values introduced by the user
        model.addAttribute(getModelName(), entity);
        // Return the edit view path
        return new org.springframework.web.servlet.ModelAndView(getEditViewPath(), model.asMap());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param binder
     */
    @InitBinder("orderBook")
    public void OrderBooksItemThymeleafController.initOrderBookBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(OrderBook.class, getOrderBookService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderBook
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView OrderBooksItemThymeleafController.editForm(@ModelAttribute OrderBook orderBook, Model model) {
        populateForm(model);
        
        model.addAttribute("orderBook", orderBook);
        return new ModelAndView("orderbooks/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderBook
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView OrderBooksItemThymeleafController.update(@Valid @ModelAttribute OrderBook orderBook, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            return new ModelAndView(getEditViewPath());
        }
        // Create Concurrency Spring Template to ensure that the following code will manage the
        // possible concurrency exceptions that appears and execute the provided coded inside the Spring template.
        // If some concurrency exception appears the template will manage it.
        OrderBook savedOrderBook = getConcurrencyTemplate().execute(orderBook, model, new ConcurrencyCallback<OrderBook>() {
            @Override
            public OrderBook doInConcurrency(OrderBook orderBook) throws Exception {
                return getOrderBookService().save(orderBook);
            }
        });
        UriComponents showURI = getItemLink().to(OrderBooksItemThymeleafLinkFactory.SHOW).with("orderBook", savedOrderBook.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderBook
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> OrderBooksItemThymeleafController.delete(@ModelAttribute OrderBook orderBook) {
        getOrderBookService().delete(orderBook);
        return ResponseEntity.ok().build();
    }
    
}