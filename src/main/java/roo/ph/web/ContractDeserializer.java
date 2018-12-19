package roo.ph.web;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;
import roo.ph.domain.Contract;
import roo.ph.service.api.ContractService;

/**
 * = ContractDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Contract.class)
public class ContractDeserializer extends JsonObjectDeserializer<Contract> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ContractService contractService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param contractService
     * @param conversionService
     */
    @Autowired
    public ContractDeserializer(@Lazy ContractService contractService, ConversionService conversionService) {
        this.contractService = contractService;
        this.conversionService = conversionService;
    }
}
