package roo.ph.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import roo.ph.domain.Contract;

/**
 * = ContractRepositoryImpl
 *
 * Implementation of ContractRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = ContractRepositoryCustom.class)
public class ContractRepositoryImpl extends QueryDslRepositorySupportExt<Contract> implements ContractRepositoryCustom{

    /**
     * Default constructor
     */
    ContractRepositoryImpl() {
        super(Contract.class);
    }
}