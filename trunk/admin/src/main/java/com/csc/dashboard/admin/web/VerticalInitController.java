package com.csc.dashboard.admin.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.csc.dashboard.admin.model.VerticalInit;

@RequestMapping("/verticalinits")
@Controller
@RooWebScaffold(path = "verticalinits", formBackingObject = VerticalInit.class)
public class VerticalInitController {
}
