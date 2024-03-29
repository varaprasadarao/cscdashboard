// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.web;

import java.io.UnsupportedEncodingException;
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

import com.csc.dashboard.admin.model.Months;

privileged aspect MonthsController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String MonthsController.create(@Valid Months months, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("months", months);
            return "monthses/create";
        }
        uiModel.asMap().clear();
        months.persist();
        return "redirect:/monthses/" + encodeUrlPathSegment(months.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String MonthsController.createForm(Model uiModel) {
        uiModel.addAttribute("months", new Months());
        return "monthses/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String MonthsController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("months", Months.findMonths(id));
        uiModel.addAttribute("itemId", id);
        return "monthses/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String MonthsController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("monthses", Months.findMonthsEntries(firstResult, sizeNo));
            float nrOfPages = (float) Months.countMonthses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("monthses", Months.findAllMonthses());
        }
        return "monthses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String MonthsController.update(@Valid Months months, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("months", months);
            return "monthses/update";
        }
        uiModel.asMap().clear();
        months.merge();
        return "redirect:/monthses/" + encodeUrlPathSegment(months.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String MonthsController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("months", Months.findMonths(id));
        return "monthses/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String MonthsController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Months months = Months.findMonths(id);
        months.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/monthses";
    }
    
    @ModelAttribute("monthses")
    public Collection<Months> MonthsController.populateMonthses() {
        return Months.findAllMonthses();
    }
    
    String MonthsController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
