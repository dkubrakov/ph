// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.ph.web;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;
import roo.ph.domain.Contract;
import roo.ph.service.api.ContractService;
import roo.ph.web.ContractDeserializer;

privileged aspect ContractDeserializer_Roo_EntityDeserializer {
    
    declare @type: ContractDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ContractService
     */
    public ContractService ContractDeserializer.getContractService() {
        return contractService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contractService
     */
    public void ContractDeserializer.setContractService(ContractService contractService) {
        this.contractService = contractService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService ContractDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void ContractDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Contract
     * @throws IOException
     */
    public Contract ContractDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        Contract contract = contractService.findOne(id);
        if (contract == null) {
            throw new NotFoundException("Contract not found");
        }
        return contract;
    }
    
}
