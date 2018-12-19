package roo.ph.repository;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import roo.ph.domain.Employer;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = EmployerRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Employer.class, finders = { @RooFinder(value = "findByName", returnType = Employer.class) })
public interface EmployerRepository extends DetachableJpaRepository<Employer, Long>, EmployerRepositoryCustom {
}
