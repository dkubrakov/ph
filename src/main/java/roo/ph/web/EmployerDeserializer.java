package roo.ph.web;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;
import roo.ph.domain.Employer;
import roo.ph.service.api.EmployerService;

/**
 * = EmployerDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Employer.class)
public class EmployerDeserializer extends JsonObjectDeserializer<Employer> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private EmployerService employerService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param employerService
     * @param conversionService
     */
    @Autowired
    public EmployerDeserializer(@Lazy EmployerService employerService, ConversionService conversionService) {
        this.employerService = employerService;
        this.conversionService = conversionService;
    }
}
