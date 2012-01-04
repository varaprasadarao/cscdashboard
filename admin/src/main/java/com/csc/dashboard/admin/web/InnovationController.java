package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.Innovation;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/innovations")
@Controller
@RooWebScaffold(path = "innovations", formBackingObject = Innovation.class)
public class InnovationController {
}