package roo.ph.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QAuthor is a Querydsl query type for Author
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QAuthor extends EntityPathBase<Author> {

    private static final long serialVersionUID = -1280050885L;

    public static final QAuthor author = new QAuthor("author");

    public final StringPath address = createString("address");

    public final SetPath<Book, QBook> books = this.<Book, QBook>createSet("books", Book.class, QBook.class, PathInits.DIRECT2);

    public final SetPath<Contract, QContract> contracts = this.<Contract, QContract>createSet("contracts", Contract.class, QContract.class, PathInits.DIRECT2);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath name = createString("name");

    public final StringPath phone = createString("phone");

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QAuthor(String variable) {
        super(Author.class, forVariable(variable));
    }

    public QAuthor(Path<? extends Author> path) {
        super(path.getType(), path.getMetadata());
    }

    public QAuthor(PathMetadata metadata) {
        super(Author.class, metadata);
    }

}

