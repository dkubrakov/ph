package roo.ph.service.api;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;
import roo.ph.domain.Author;

/**
 * = AuthorService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = Author.class)
public interface AuthorService extends EntityResolver<Author, Long>, ValidatorService<Author> {
}
