// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.Appreciation;
import com.csc.dashboard.admin.model.Months;
import com.csc.dashboard.admin.model.Team;
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

privileged aspect AppreciationController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String AppreciationController.create(@Valid Appreciation appreciation, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("appreciation", appreciation);
            return "appreciations/create";
        }
        uiModel.asMap().clear();
        appreciation.persist();
        return "redirect:/appreciations/" + encodeUrlPathSegment(appreciation.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String AppreciationController.createForm(Model uiModel) {
        uiModel.addAttribute("appreciation", new Appreciation());
        return "appreciations/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String AppreciationController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("appreciation", Appreciation.findAppreciation(id));
        uiModel.addAttribute("itemId", id);
        return "appreciations/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String AppreciationController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("appreciations", Appreciation.findAppreciationEntries(firstResult, sizeNo));
            float nrOfPages = (float) Appreciation.countAppreciations() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("appreciations", Appreciation.findAllAppreciations());
        }
        return "appreciations/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String AppreciationController.update(@Valid Appreciation appreciation, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("appreciation", appreciation);
            return "appreciations/update";
        }
        uiModel.asMap().clear();
        appreciation.merge();
        return "redirect:/appreciations/" + encodeUrlPathSegment(appreciation.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String AppreciationController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("appreciation", Appreciation.findAppreciation(id));
        return "appreciations/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String AppreciationController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Appreciation appreciation = Appreciation.findAppreciation(id);
        appreciation.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/appreciations";
    }
    
    @ModelAttribute("appreciations")
    public Collection<Appreciation> AppreciationController.populateAppreciations() {
        return Appreciation.findAllAppreciations();
    }
    
    @ModelAttribute("monthses")
    public Collection<Months> AppreciationController.populateMonthses() {
        return Months.findAllMonthses();
    }
    
    @ModelAttribute("teams")
    public Collection<Team> AppreciationController.populateTeams() {
        return Team.findAllTeams();
    }
    
    String AppreciationController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
