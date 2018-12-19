package roo.ph.repository;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import roo.ph.domain.Customer;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = CustomerRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Customer.class, finders = { @RooFinder(value = "findByName", returnType = Customer.class) })
public interface CustomerRepository extends DetachableJpaRepository<Customer, Long>, CustomerRepositoryCustom {
}
