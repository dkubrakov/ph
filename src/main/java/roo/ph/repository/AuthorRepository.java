package roo.ph.repository;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import roo.ph.domain.Author;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = AuthorRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Author.class, finders = { @RooFinder(value = "findByName", returnType = Author.class) })
public interface AuthorRepository extends DetachableJpaRepository<Author, Long>, AuthorRepositoryCustom {
}
