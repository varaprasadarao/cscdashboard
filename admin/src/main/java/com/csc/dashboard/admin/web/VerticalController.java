package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.Vertical;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/verticals")
@Controller
@RooWebScaffold(path = "verticals", formBackingObject = Vertical.class)
public class VerticalController {
}
