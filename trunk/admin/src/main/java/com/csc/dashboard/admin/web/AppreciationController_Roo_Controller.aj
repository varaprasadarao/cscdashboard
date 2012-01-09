// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.web;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
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

import com.csc.dashboard.admin.model.Appreciation;
import com.csc.dashboard.admin.model.DropDown;
import com.csc.dashboard.admin.model.Months;
import com.csc.dashboard.admin.model.Team;

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
    public String AppreciationController.createForm(Model uiModel,HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
    	long teamCount = Team.countTeams(remoteUser);
    	if(teamCount==0)
    		return "noTeam";
    	Calendar cal = Calendar.getInstance();
    	int nowMonth = cal.get(Calendar.MONTH);
    	int nowYear = cal.get(Calendar.YEAR);
        int monthId = nowYear*12+nowMonth-1;
    	uiModel.addAttribute("appreciation", new Appreciation(monthId));
        return "appreciations/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String AppreciationController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("appreciation", Appreciation.findAppreciation(id));
        uiModel.addAttribute("itemId", id);
        return "appreciations/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String AppreciationController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel, HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
    	System.out.println("Remote User = " + remoteUser);
    	if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("appreciations", Appreciation.findAppreciationEntries(firstResult, sizeNo, remoteUser));
            float nrOfPages = (float) Appreciation.countAppreciations(remoteUser) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("appreciations", Appreciation.findAllAppreciations(remoteUser));
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
    public Collection<Appreciation> AppreciationController.populateAppreciations(HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
        return Appreciation.findAllAppreciations(remoteUser);
    }
    
    @ModelAttribute("monthses")
    public Collection<Months> AppreciationController.populateMonthses() {
        return Months.findAllMonthses();
    }
    
    @ModelAttribute("teams")
    public Collection<Team> AppreciationController.populateTeams(HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
        return Team.findAllTeams(remoteUser);
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
    
    @ModelAttribute("relevance")
    public Collection<DropDown> AppreciationController.populateRelevance() {

    	Collection<DropDown> dd = new ArrayList<DropDown>();
    	dd.add(new DropDown("High","High"));
    	dd.add(new DropDown("Medium","Medium"));
    	dd.add(new DropDown("Low","Low"));
    	
    	return dd;
    	
    }
    
}