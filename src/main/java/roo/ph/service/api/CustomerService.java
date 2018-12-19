package roo.ph.service.api;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;
import roo.ph.domain.Customer;

/**
 * = CustomerService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = Customer.class)
public interface CustomerService extends EntityResolver<Customer, Long>, ValidatorService<Customer> {
}
