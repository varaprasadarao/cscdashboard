// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.Months;
import com.csc.dashboard.admin.model.SlaAdherence;
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

privileged aspect SlaAdherenceController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String SlaAdherenceController.create(@Valid SlaAdherence slaAdherence, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("slaAdherence", slaAdherence);
            return "slaadherences/create";
        }
        uiModel.asMap().clear();
        slaAdherence.persist();
        return "redirect:/slaadherences/" + encodeUrlPathSegment(slaAdherence.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String SlaAdherenceController.createForm(Model uiModel,HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
    	long teamCount = Team.countTeams(remoteUser);
    	if(teamCount==0)
    		return "noTeam";
        uiModel.addAttribute("slaAdherence", new SlaAdherence());
        return "slaadherences/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String SlaAdherenceController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("slaadherence", SlaAdherence.findSlaAdherence(id));
        uiModel.addAttribute("itemId", id);
        return "slaadherences/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String SlaAdherenceController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel, HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
    	if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("slaadherences", SlaAdherence.findSlaAdherenceEntries(firstResult, sizeNo, remoteUser));
            float nrOfPages = (float) SlaAdherence.countSlaAdherences(remoteUser) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("slaadherences", SlaAdherence.findAllSlaAdherences(remoteUser));
        }
        return "slaadherences/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String SlaAdherenceController.update(@Valid SlaAdherence slaAdherence, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("slaAdherence", slaAdherence);
            return "slaadherences/update";
        }
        uiModel.asMap().clear();
        slaAdherence.merge();
        return "redirect:/slaadherences/" + encodeUrlPathSegment(slaAdherence.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String SlaAdherenceController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("slaAdherence", SlaAdherence.findSlaAdherence(id));
        return "slaadherences/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String SlaAdherenceController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        SlaAdherence slaAdherence = SlaAdherence.findSlaAdherence(id);
        slaAdherence.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/slaadherences";
    }
    
    @ModelAttribute("monthses")
    public Collection<Months> SlaAdherenceController.populateMonthses() {
        return Months.findAllMonthses();
    }
    
    @ModelAttribute("slaadherences")
    public Collection<SlaAdherence> SlaAdherenceController.populateSlaAdherences(HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
        return SlaAdherence.findAllSlaAdherences(remoteUser);
    }
    
    @ModelAttribute("teams")
    public Collection<Team> SlaAdherenceController.populateTeams(HttpServletRequest httpServletRequest) {
    	String remoteUser = httpServletRequest.getRemoteUser();
        return Team.findAllTeams(remoteUser);
    }
    
    String SlaAdherenceController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
