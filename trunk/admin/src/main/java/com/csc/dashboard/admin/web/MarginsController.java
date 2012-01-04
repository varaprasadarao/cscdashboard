package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.Margins;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/marginses")
@Controller
@RooWebScaffold(path = "marginses", formBackingObject = Margins.class)
public class MarginsController {
}
