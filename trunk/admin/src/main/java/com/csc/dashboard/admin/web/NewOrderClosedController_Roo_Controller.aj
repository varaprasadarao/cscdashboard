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

import com.csc.dashboard.admin.model.DropDown;
import com.csc.dashboard.admin.model.Months;
import com.csc.dashboard.admin.model.NewOrderClosed;
import com.csc.dashboard.admin.model.Team;

privileged aspect NewOrderClosedController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String NewOrderClosedController.create(@Valid NewOrderClosed newOrderClosed, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("newOrderClosed", newOrderClosed);
            return "newordercloseds/create";
        }
        uiModel.asMap().clear();
        newOrderClosed.persist();
        return "redirect:/newordercloseds/" + encodeUrlPathSegment(newOrderClosed.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String NewOrderClosedController.createForm(Model uiModel,HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
    	long teamCount = Team.countTeams(remoteUser);
    	if(teamCount==0)
    		return "noTeam";
    	Calendar cal = Calendar.getInstance();
    	int nowMonth = cal.get(Calendar.MONTH);
    	int nowYear = cal.get(Calendar.YEAR);
        int monthId = nowYear*12+nowMonth-1;
        uiModel.addAttribute("newOrderClosed", new NewOrderClosed(monthId));
        return "newordercloseds/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String NewOrderClosedController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("neworderclosed", NewOrderClosed.findNewOrderClosed(id));
        uiModel.addAttribute("itemId", id);
        return "newordercloseds/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String NewOrderClosedController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel, HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
    	if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("newordercloseds", NewOrderClosed.findNewOrderClosedEntries(firstResult, sizeNo,remoteUser));
            float nrOfPages = (float) NewOrderClosed.countNewOrderCloseds(remoteUser) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("newordercloseds", NewOrderClosed.findAllNewOrderCloseds(remoteUser));
        }
        return "newordercloseds/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String NewOrderClosedController.update(@Valid NewOrderClosed newOrderClosed, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("newOrderClosed", newOrderClosed);
            return "newordercloseds/update";
        }
        uiModel.asMap().clear();
        newOrderClosed.merge();
        return "redirect:/newordercloseds/" + encodeUrlPathSegment(newOrderClosed.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String NewOrderClosedController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("newOrderClosed", NewOrderClosed.findNewOrderClosed(id));
        return "newordercloseds/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String NewOrderClosedController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        NewOrderClosed newOrderClosed = NewOrderClosed.findNewOrderClosed(id);
        newOrderClosed.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/newordercloseds";
    }
    
    @ModelAttribute("monthses")
    public Collection<Months> NewOrderClosedController.populateMonthses() {
        return Months.findAllMonthses();
    }
    
    @ModelAttribute("newordercloseds")
    public Collection<NewOrderClosed> NewOrderClosedController.populateNewOrderCloseds(HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
        return NewOrderClosed.findAllNewOrderCloseds(remoteUser);
    }
    
    @ModelAttribute("teams")
    public Collection<Team> NewOrderClosedController.populateTeams(HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
        return Team.findAllTeams(remoteUser);
    }
    
    String NewOrderClosedController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
    @ModelAttribute("typeDD")
    public Collection<DropDown> NewOrderClosedController.populateTypeDD() {

    	Collection<DropDown> dd = new ArrayList<DropDown>();
    	dd.add(new DropDown("Project","Project"));
    	dd.add(new DropDown("Work Order","Work Order"));
    	
    	return dd;
    	
    }
    @ModelAttribute("statusDD")
    public Collection<DropDown> NewOrderClosedController.populateStatusDD() {

    	Collection<DropDown> dd = new ArrayList<DropDown>();
    	dd.add(new DropDown("Open","Open"));
    	dd.add(new DropDown("Completed","Completed"));
    	dd.add(new DropDown("Ongoing","Ongoing"));
    	
    	return dd;
    	
    }
}
