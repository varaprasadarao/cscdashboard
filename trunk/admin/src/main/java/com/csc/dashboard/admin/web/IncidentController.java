package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.Incident;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/incidents")
@Controller
@RooWebScaffold(path = "incidents", formBackingObject = Incident.class)
public class IncidentController {
}
