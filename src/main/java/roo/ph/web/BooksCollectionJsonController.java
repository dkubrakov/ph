package roo.ph.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;
import roo.ph.domain.Book;

/**
 * = BooksCollectionJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Book.class, type = ControllerType.COLLECTION)
@RooJSON
public class BooksCollectionJsonController {
}
