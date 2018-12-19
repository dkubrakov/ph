package roo.ph.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;
import roo.ph.domain.Employer;

/**
 * = EmployersItemJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Employer.class, type = ControllerType.ITEM)
@RooJSON
public class EmployersItemJsonController {
}
