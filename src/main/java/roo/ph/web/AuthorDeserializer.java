package roo.ph.web;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;
import roo.ph.domain.Author;
import roo.ph.service.api.AuthorService;

/**
 * = AuthorDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Author.class)
public class AuthorDeserializer extends JsonObjectDeserializer<Author> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private AuthorService authorService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param authorService
     * @param conversionService
     */
    @Autowired
    public AuthorDeserializer(@Lazy AuthorService authorService, ConversionService conversionService) {
        this.authorService = authorService;
        this.conversionService = conversionService;
    }
}
