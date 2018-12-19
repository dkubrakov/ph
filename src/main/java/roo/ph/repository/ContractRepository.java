package roo.ph.repository;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import roo.ph.domain.Contract;

/**
 * = ContractRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Contract.class)
public interface ContractRepository extends DetachableJpaRepository<Contract, Long>, ContractRepositoryCustom {
}
