package roo.ph.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import roo.ph.domain.Employer;

/**
 * = EmployerRepositoryImpl
 *
 * Implementation of EmployerRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = EmployerRepositoryCustom.class)
public class EmployerRepositoryImpl extends QueryDslRepositorySupportExt<Employer> implements EmployerRepositoryCustom{

    /**
     * Default constructor
     */
    EmployerRepositoryImpl() {
        super(Employer.class);
    }
}