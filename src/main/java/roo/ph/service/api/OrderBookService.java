package roo.ph.service.api;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;
import roo.ph.domain.OrderBook;

/**
 * = OrderBookService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = OrderBook.class)
public interface OrderBookService extends EntityResolver<OrderBook, Long>, ValidatorService<OrderBook> {
}
