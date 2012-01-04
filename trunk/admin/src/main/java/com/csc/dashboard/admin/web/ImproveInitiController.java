package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.ImproveIniti;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/improveinitis")
@Controller
@RooWebScaffold(path = "improveinitis", formBackingObject = ImproveIniti.class)
public class ImproveInitiController {
}
