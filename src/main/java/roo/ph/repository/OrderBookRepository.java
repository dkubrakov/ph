package roo.ph.repository;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import roo.ph.domain.OrderBook;

/**
 * = OrderBookRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = OrderBook.class)
public interface OrderBookRepository extends DetachableJpaRepository<OrderBook, Long>, OrderBookRepositoryCustom {
}
