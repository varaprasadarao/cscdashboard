package com.csc.dashboard.admin.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.csc.dashboard.admin.model.Utilization;

@RequestMapping("/utilizations")
@Controller
@RooWebScaffold(path = "utilizations", formBackingObject = Utilization.class)
public class UtilizationController {
}
