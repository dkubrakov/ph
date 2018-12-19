package roo.ph.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import roo.ph.domain.OrderBook;

/**
 * = OrderBookRepositoryImpl
 *
 * Implementation of OrderBookRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = OrderBookRepositoryCustom.class)
public class OrderBookRepositoryImpl extends QueryDslRepositorySupportExt<OrderBook> implements OrderBookRepositoryCustom{

    /**
     * Default constructor
     */
    OrderBookRepositoryImpl() {
        super(OrderBook.class);
    }
}