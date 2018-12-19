package roo.ph.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooDetail;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import roo.ph.domain.OrderBook;

/**
 * = OrderBooksItemCustomersThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = OrderBook.class, type = ControllerType.DETAIL)
@RooDetail(relationField = "customers", views = { "list", "show" })
@RooThymeleaf
public class OrderBooksItemCustomersThymeleafController {
}
