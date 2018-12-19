package roo.ph.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QOrderBook is a Querydsl query type for OrderBook
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QOrderBook extends EntityPathBase<OrderBook> {

    private static final long serialVersionUID = -848909913L;

    public static final QOrderBook orderBook = new QOrderBook("orderBook");

    public final SetPath<Book, QBook> books = this.<Book, QBook>createSet("books", Book.class, QBook.class, PathInits.DIRECT2);

    public final SetPath<Customer, QCustomer> customers = this.<Customer, QCustomer>createSet("customers", Customer.class, QCustomer.class, PathInits.DIRECT2);

    public final DateTimePath<java.util.Date> deliverDate = createDateTime("deliverDate", java.util.Date.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final DateTimePath<java.util.Date> orderDate = createDateTime("orderDate", java.util.Date.class);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QOrderBook(String variable) {
        super(OrderBook.class, forVariable(variable));
    }

    public QOrderBook(Path<? extends OrderBook> path) {
        super(path.getType(), path.getMetadata());
    }

    public QOrderBook(PathMetadata metadata) {
        super(OrderBook.class, metadata);
    }

}

