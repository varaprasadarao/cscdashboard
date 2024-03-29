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

import com.csc.dashboard.admin.model.Innovation;
import com.csc.dashboard.admin.model.Months;
import com.csc.dashboard.admin.model.Team;

privileged aspect InnovationController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String InnovationController.create(@Valid Innovation innovation, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("innovation", innovation);
            return "innovations/create";
        }
        uiModel.asMap().clear();
        innovation.persist();
        return "redirect:/innovations/" + encodeUrlPathSegment(innovation.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String InnovationController.createForm(Model uiModel,HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
    	long teamCount = Team.countTeams(remoteUser);
    	if(teamCount==0)
    		return "noTeam";
    	Calendar cal = Calendar.getInstance();
    	int nowMonth = cal.get(Calendar.MONTH);
    	int nowYear = cal.get(Calendar.YEAR);
        int monthId = nowYear*12+nowMonth-1;
    	uiModel.addAttribute("innovation", new Innovation(monthId));
        return "innovations/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String InnovationController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("innovation", Innovation.findInnovation(id));
        uiModel.addAttribute("itemId", id);
        return "innovations/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String InnovationController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel, HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
    	if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("innovations", Innovation.findInnovationEntries(firstResult, sizeNo,remoteUser));
            float nrOfPages = (float) Innovation.countInnovations(remoteUser) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("innovations", Innovation.findAllInnovations(remoteUser));
        }
        return "innovations/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String InnovationController.update(@Valid Innovation innovation, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("innovation", innovation);
            return "innovations/update";
        }
        uiModel.asMap().clear();
        innovation.merge();
        return "redirect:/innovations/" + encodeUrlPathSegment(innovation.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String InnovationController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("innovation", Innovation.findInnovation(id));
        return "innovations/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String InnovationController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Innovation innovation = Innovation.findInnovation(id);
        innovation.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/innovations";
    }
    
    @ModelAttribute("innovations")
    public Collection<Innovation> InnovationController.populateInnovations(HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
        return Innovation.findAllInnovations(remoteUser);
    }
    
    @ModelAttribute("monthses")
    public Collection<Months> InnovationController.populateMonthses() {
        return Months.findAllMonthses();
    }
    
    @ModelAttribute("teams")
    public Collection<Team> InnovationController.populateTeams(HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
        return Team.findAllTeams(remoteUser);
    }
    
    String InnovationController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
