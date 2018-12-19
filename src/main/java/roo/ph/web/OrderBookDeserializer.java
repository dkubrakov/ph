package roo.ph.web;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;
import roo.ph.domain.OrderBook;
import roo.ph.service.api.OrderBookService;

/**
 * = OrderBookDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = OrderBook.class)
public class OrderBookDeserializer extends JsonObjectDeserializer<OrderBook> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private OrderBookService orderBookService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param orderBookService
     * @param conversionService
     */
    @Autowired
    public OrderBookDeserializer(@Lazy OrderBookService orderBookService, ConversionService conversionService) {
        this.orderBookService = orderBookService;
        this.conversionService = conversionService;
    }
}
