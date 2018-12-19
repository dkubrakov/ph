package roo.ph.repository;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import roo.ph.domain.Book;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = BookRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Book.class, finders = { @RooFinder(value = "findByName", returnType = Book.class) })
public interface BookRepository extends DetachableJpaRepository<Book, Long>, BookRepositoryCustom {
}
