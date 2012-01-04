package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.NewOrderClosed;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/newordercloseds")
@Controller
@RooWebScaffold(path = "newordercloseds", formBackingObject = NewOrderClosed.class)
public class NewOrderClosedController {
}
