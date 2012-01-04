package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.Appreciation;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/appreciations")
@Controller
@RooWebScaffold(path = "appreciations", formBackingObject = Appreciation.class)
public class AppreciationController {
}
