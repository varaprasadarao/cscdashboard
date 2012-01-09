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

import com.csc.dashboard.admin.model.KmScorecard;
import com.csc.dashboard.admin.model.Months;
import com.csc.dashboard.admin.model.Team;

privileged aspect KmScorecardController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String KmScorecardController.create(@Valid KmScorecard kmScorecard, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("kmScorecard", kmScorecard);
            return "kmscorecards/create";
        }
        uiModel.asMap().clear();
        kmScorecard.persist();
        return "redirect:/kmscorecards/" + encodeUrlPathSegment(kmScorecard.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String KmScorecardController.createForm(Model uiModel,HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
    	long teamCount = Team.countTeams(remoteUser);
    	if(teamCount==0)
    		return "noTeam";
    	Calendar cal = Calendar.getInstance();
    	int nowMonth = cal.get(Calendar.MONTH);
    	int nowYear = cal.get(Calendar.YEAR);
        int monthId = nowYear*12+nowMonth-1;
    	uiModel.addAttribute("kmScorecard", new KmScorecard(monthId));
        return "kmscorecards/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String KmScorecardController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("kmscorecard", KmScorecard.findKmScorecard(id));
        uiModel.addAttribute("itemId", id);
        return "kmscorecards/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String KmScorecardController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel, HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
    	if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("kmscorecards", KmScorecard.findKmScorecardEntries(firstResult, sizeNo,remoteUser));
            float nrOfPages = (float) KmScorecard.countKmScorecards(remoteUser) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("kmscorecards", KmScorecard.findAllKmScorecards(remoteUser));
        }
        return "kmscorecards/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String KmScorecardController.update(@Valid KmScorecard kmScorecard, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("kmScorecard", kmScorecard);
            return "kmscorecards/update";
        }
        uiModel.asMap().clear();
        kmScorecard.merge();
        return "redirect:/kmscorecards/" + encodeUrlPathSegment(kmScorecard.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String KmScorecardController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("kmScorecard", KmScorecard.findKmScorecard(id));
        return "kmscorecards/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String KmScorecardController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        KmScorecard kmScorecard = KmScorecard.findKmScorecard(id);
        kmScorecard.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/kmscorecards";
    }
    
    @ModelAttribute("kmscorecards")
    public Collection<KmScorecard> KmScorecardController.populateKmScorecards(HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
        return KmScorecard.findAllKmScorecards(remoteUser);
    }
    
    @ModelAttribute("monthses")
    public Collection<Months> KmScorecardController.populateMonthses() {
    	
        return Months.findAllMonthses();
    }
    
    @ModelAttribute("teams")
    public Collection<Team> KmScorecardController.populateTeams(HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
        return Team.findAllTeams(remoteUser);
    }
    
    String KmScorecardController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
