package roo.ph.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import roo.ph.domain.Contract;

/**
 * = ContractsCollectionThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Contract.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class ContractsCollectionThymeleafController {
}
