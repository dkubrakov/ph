package roo.ph.web;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import roo.ph.domain.Employer;

/**
 * = EmployersItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Employer.class, type = ControllerType.ITEM)
@RooThymeleaf
public class EmployersItemThymeleafController implements ConcurrencyManager<Employer> {
}
