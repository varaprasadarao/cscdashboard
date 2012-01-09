package com.csc.dashboard.admin.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.csc.dashboard.admin.model.RepresentationInCsc;

@RequestMapping("/representationincscs")
@Controller
@RooWebScaffold(path = "representationincscs", formBackingObject = RepresentationInCsc.class)
public class RepresentationInCscController {
}
