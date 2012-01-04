package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.Csat;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/csats")
@Controller
@RooWebScaffold(path = "csats", formBackingObject = Csat.class)
public class CsatController {
}
