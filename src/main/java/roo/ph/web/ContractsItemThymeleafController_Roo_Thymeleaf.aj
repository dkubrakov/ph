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
import roo.ph.domain.Contract;
import roo.ph.service.api.ContractService;
import roo.ph.web.ContractsCollectionThymeleafController;
import roo.ph.web.ContractsItemThymeleafController;
import roo.ph.web.ContractsItemThymeleafLinkFactory;

privileged aspect ContractsItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: ContractsItemThymeleafController: @Controller;
    
    declare @type: ContractsItemThymeleafController: @RequestMapping(value = "/contracts/{contract}", name = "ContractsItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ContractService ContractsItemThymeleafController.contractService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource ContractsItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ContractsItemThymeleafController> ContractsItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ContractsCollectionThymeleafController> ContractsItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private final ConcurrencyTemplate<Contract> ContractsItemThymeleafController.concurrencyTemplate = new ConcurrencyTemplate<Contract>(this);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param contractService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public ContractsItemThymeleafController.new(ContractService contractService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setContractService(contractService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(ContractsItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(ContractsCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ContractService
     */
    public ContractService ContractsItemThymeleafController.getContractService() {
        return contractService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contractService
     */
    public void ContractsItemThymeleafController.setContractService(ContractService contractService) {
        this.contractService = contractService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource ContractsItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void ContractsItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ContractsItemThymeleafController> ContractsItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void ContractsItemThymeleafController.setItemLink(MethodLinkBuilderFactory<ContractsItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ContractsCollectionThymeleafController> ContractsItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void ContractsItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<ContractsCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Contract
     */
    @ModelAttribute
    public Contract ContractsItemThymeleafController.getContract(@PathVariable("contract") Long id, Locale locale, HttpMethod method) {
        Contract contract = null;
        if (HttpMethod.PUT.equals(method)) {
            contract = contractService.findOneForUpdate(id);
        } else {
            contract = contractService.findOne(id);
        }
        
        if (contract == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Contract", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return contract;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contract
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView ContractsItemThymeleafController.show(@ModelAttribute Contract contract, Model model) {
        model.addAttribute("contract", contract);
        return new ModelAndView("contracts/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contract
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView ContractsItemThymeleafController.showInline(@ModelAttribute Contract contract, Model model) {
        model.addAttribute("contract", contract);
        return new ModelAndView("contracts/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ContractsItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ContractsItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConcurrencyTemplate
     */
    public ConcurrencyTemplate<Contract> ContractsItemThymeleafController.getConcurrencyTemplate() {
        return concurrencyTemplate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String ContractsItemThymeleafController.getModelName() {
        return "contract";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String ContractsItemThymeleafController.getEditViewPath() {
        return "contracts/edit";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param record
     * @return Integer
     */
    public Integer ContractsItemThymeleafController.getLastVersion(Contract record) {
        return getContractService().findOne(record.getId()).getVersion();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @param model
     * @return ModelAndView
     */
    public ModelAndView ContractsItemThymeleafController.populateAndGetFormView(Contract entity, Model model) {
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
    @InitBinder("contract")
    public void ContractsItemThymeleafController.initContractBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(Contract.class, getContractService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contract
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView ContractsItemThymeleafController.editForm(@ModelAttribute Contract contract, Model model) {
        populateForm(model);
        
        model.addAttribute("contract", contract);
        return new ModelAndView("contracts/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contract
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView ContractsItemThymeleafController.update(@Valid @ModelAttribute Contract contract, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            return new ModelAndView(getEditViewPath());
        }
        // Create Concurrency Spring Template to ensure that the following code will manage the
        // possible concurrency exceptions that appears and execute the provided coded inside the Spring template.
        // If some concurrency exception appears the template will manage it.
        Contract savedContract = getConcurrencyTemplate().execute(contract, model, new ConcurrencyCallback<Contract>() {
            @Override
            public Contract doInConcurrency(Contract contract) throws Exception {
                return getContractService().save(contract);
            }
        });
        UriComponents showURI = getItemLink().to(ContractsItemThymeleafLinkFactory.SHOW).with("contract", savedContract.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contract
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ContractsItemThymeleafController.delete(@ModelAttribute Contract contract) {
        getContractService().delete(contract);
        return ResponseEntity.ok().build();
    }
    
}
