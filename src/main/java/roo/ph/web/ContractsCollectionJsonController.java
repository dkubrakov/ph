package roo.ph.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;
import roo.ph.domain.Contract;

/**
 * = ContractsCollectionJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Contract.class, type = ControllerType.COLLECTION)
@RooJSON
public class ContractsCollectionJsonController {
}
