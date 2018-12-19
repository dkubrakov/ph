package roo.ph.web;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import roo.ph.domain.OrderBook;

/**
 * = OrderBooksItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = OrderBook.class, type = ControllerType.ITEM)
@RooThymeleaf
public class OrderBooksItemThymeleafController implements ConcurrencyManager<OrderBook> {
}
