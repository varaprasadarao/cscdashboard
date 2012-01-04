package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.Sla;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/slas")
@Controller
@RooWebScaffold(path = "slas", formBackingObject = Sla.class)
public class SlaController {
}
