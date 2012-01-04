package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.Escalations;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/escalationses")
@Controller
@RooWebScaffold(path = "escalationses", formBackingObject = Escalations.class)
public class EscalationsController {
}
