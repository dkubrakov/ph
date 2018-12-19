package roo.ph.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import roo.ph.domain.Author;

/**
 * = AuthorRepositoryImpl
 *
 * Implementation of AuthorRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = AuthorRepositoryCustom.class)
public class AuthorRepositoryImpl extends QueryDslRepositorySupportExt<Author> implements AuthorRepositoryCustom{

    /**
     * Default constructor
     */
    AuthorRepositoryImpl() {
        super(Author.class);
    }
}