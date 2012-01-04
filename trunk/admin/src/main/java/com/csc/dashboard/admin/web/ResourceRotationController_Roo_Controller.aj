// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.Account;
import com.csc.dashboard.admin.model.Months;
import com.csc.dashboard.admin.model.ResourceRotation;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.String;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect ResourceRotationController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String ResourceRotationController.create(@Valid ResourceRotation resourceRotation, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("resourceRotation", resourceRotation);
            return "resourcerotations/create";
        }
        uiModel.asMap().clear();
        resourceRotation.persist();
        return "redirect:/resourcerotations/" + encodeUrlPathSegment(resourceRotation.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String ResourceRotationController.createForm(Model uiModel) {
        uiModel.addAttribute("resourceRotation", new ResourceRotation());
        return "resourcerotations/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String ResourceRotationController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("resourcerotation", ResourceRotation.findResourceRotation(id));
        uiModel.addAttribute("itemId", id);
        return "resourcerotations/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String ResourceRotationController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("resourcerotations", ResourceRotation.findResourceRotationEntries(firstResult, sizeNo));
            float nrOfPages = (float) ResourceRotation.countResourceRotations() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("resourcerotations", ResourceRotation.findAllResourceRotations());
        }
        return "resourcerotations/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String ResourceRotationController.update(@Valid ResourceRotation resourceRotation, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("resourceRotation", resourceRotation);
            return "resourcerotations/update";
        }
        uiModel.asMap().clear();
        resourceRotation.merge();
        return "redirect:/resourcerotations/" + encodeUrlPathSegment(resourceRotation.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String ResourceRotationController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("resourceRotation", ResourceRotation.findResourceRotation(id));
        return "resourcerotations/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String ResourceRotationController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        ResourceRotation resourceRotation = ResourceRotation.findResourceRotation(id);
        resourceRotation.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/resourcerotations";
    }
    
    @ModelAttribute("accounts")
    public Collection<Account> ResourceRotationController.populateAccounts() {
        return Account.findAllAccounts();
    }
    
    @ModelAttribute("monthses")
    public Collection<Months> ResourceRotationController.populateMonthses() {
        return Months.findAllMonthses();
    }
    
    @ModelAttribute("resourcerotations")
    public Collection<ResourceRotation> ResourceRotationController.populateResourceRotations() {
        return ResourceRotation.findAllResourceRotations();
    }
    
    String ResourceRotationController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
