package com.csc.dashboard.admin.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.csc.dashboard.admin.model.NewOrderClosed;

@RequestMapping("/newordercloseds")
@Controller
@RooWebScaffold(path = "newordercloseds", formBackingObject = NewOrderClosed.class)
public class NewOrderClosedController {
}
