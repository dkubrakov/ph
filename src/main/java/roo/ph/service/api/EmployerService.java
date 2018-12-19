package roo.ph.service.api;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;
import roo.ph.domain.Employer;

/**
 * = EmployerService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = Employer.class)
public interface EmployerService extends EntityResolver<Employer, Long>, ValidatorService<Employer> {
}
