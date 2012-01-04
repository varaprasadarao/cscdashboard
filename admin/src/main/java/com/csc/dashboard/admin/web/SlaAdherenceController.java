package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.SlaAdherence;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/slaadherences")
@Controller
@RooWebScaffold(path = "slaadherences", formBackingObject = SlaAdherence.class)
public class SlaAdherenceController {
}
