// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.web;

import java.io.UnsupportedEncodingException;
import java.util.Calendar;
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
import com.csc.dashboard.admin.model.Team;
import com.csc.dashboard.admin.model.Utilization;

privileged aspect UtilizationController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String UtilizationController.create(@Valid Utilization utilization, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("utilization", utilization);
            return "utilizations/create";
        }
        uiModel.asMap().clear();
        utilization.persist();
        return "redirect:/utilizations/" + encodeUrlPathSegment(utilization.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String UtilizationController.createForm(Model uiModel,HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
    	long teamCount = Team.countTeams(remoteUser);
    	if(teamCount==0)
    		return "noTeam";
    	Calendar cal = Calendar.getInstance();
    	int nowMonth = cal.get(Calendar.MONTH);
    	int nowYear = cal.get(Calendar.YEAR);
        int monthId = nowYear*12+nowMonth-1;
        uiModel.addAttribute("utilization", new Utilization(monthId));
        return "utilizations/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String UtilizationController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("utilization", Utilization.findUtilization(id));
        uiModel.addAttribute("itemId", id);
        return "utilizations/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String UtilizationController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel, HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
    	if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("utilizations", Utilization.findUtilizationEntries(firstResult, sizeNo,remoteUser));
            float nrOfPages = (float) Utilization.countUtilizations(remoteUser) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("utilizations", Utilization.findAllUtilizations(remoteUser));
        }
        return "utilizations/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String UtilizationController.update(@Valid Utilization utilization, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("utilization", utilization);
            return "utilizations/update";
        }
        uiModel.asMap().clear();
        utilization.merge();
        return "redirect:/utilizations/" + encodeUrlPathSegment(utilization.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String UtilizationController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("utilization", Utilization.findUtilization(id));
        return "utilizations/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String UtilizationController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Utilization utilization = Utilization.findUtilization(id);
        utilization.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/utilizations";
    }
    
    @ModelAttribute("monthses")
    public Collection<Months> UtilizationController.populateMonthses() {
        return Months.findAllMonthses();
    }
    
    @ModelAttribute("teams")
    public Collection<Team> UtilizationController.populateTeams(HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
        return Team.findAllTeams(remoteUser);
    }
    
    @ModelAttribute("utilizations")
    public Collection<Utilization> UtilizationController.populateUtilizations(HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
        return Utilization.findAllUtilizations(remoteUser);
    }
    
    String UtilizationController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
