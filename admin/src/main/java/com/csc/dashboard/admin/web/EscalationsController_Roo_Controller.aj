// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.Account;
import com.csc.dashboard.admin.model.Escalations;
import com.csc.dashboard.admin.model.Months;
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

privileged aspect EscalationsController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String EscalationsController.create(@Valid Escalations escalations, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("escalations", escalations);
            return "escalationses/create";
        }
        uiModel.asMap().clear();
        escalations.persist();
        return "redirect:/escalationses/" + encodeUrlPathSegment(escalations.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String EscalationsController.createForm(Model uiModel,HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser(); 
    	long accCount = Account.findAllAccounts(remoteUser).size();
    	if(accCount==0)
    		return "noTeam";
        uiModel.addAttribute("escalations", new Escalations());
        return "escalationses/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String EscalationsController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("escalations", Escalations.findEscalations(id));
        uiModel.addAttribute("itemId", id);
        return "escalationses/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String EscalationsController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel, HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser(); 
    	if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("escalationses", Escalations.findEscalationsEntries(firstResult, sizeNo,remoteUser));
            float nrOfPages = (float) Escalations.countEscalationses(remoteUser) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("escalationses", Escalations.findAllEscalationses(remoteUser));
        }
        return "escalationses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String EscalationsController.update(@Valid Escalations escalations, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("escalations", escalations);
            return "escalationses/update";
        }
        uiModel.asMap().clear();
        escalations.merge();
        return "redirect:/escalationses/" + encodeUrlPathSegment(escalations.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String EscalationsController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("escalations", Escalations.findEscalations(id));
        return "escalationses/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String EscalationsController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Escalations escalations = Escalations.findEscalations(id);
        escalations.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/escalationses";
    }
    
    @ModelAttribute("accounts")
    public Collection<Account> EscalationsController.populateAccounts(HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser(); 
        return Account.findAllAccounts(remoteUser);
    }
    
    @ModelAttribute("escalationses")
    public Collection<Escalations> EscalationsController.populateEscalationses(HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser(); 
        return Escalations.findAllEscalationses(remoteUser);
    }
    
    @ModelAttribute("monthses")
    public Collection<Months> EscalationsController.populateMonthses() {
        return Months.findAllMonthses();
    }
    
    String EscalationsController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
