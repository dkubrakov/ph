package roo.ph.service.api;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;
import roo.ph.domain.Contract;

/**
 * = ContractService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = Contract.class)
public interface ContractService extends EntityResolver<Contract, Long>, ValidatorService<Contract> {
}
