package roo.ph.web;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import roo.ph.domain.Contract;

/**
 * = ContractsItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Contract.class, type = ControllerType.ITEM)
@RooThymeleaf
public class ContractsItemThymeleafController implements ConcurrencyManager<Contract> {
}
