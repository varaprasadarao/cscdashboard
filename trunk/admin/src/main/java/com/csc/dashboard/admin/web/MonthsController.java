package com.csc.dashboard.admin.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.csc.dashboard.admin.model.Months;

@RequestMapping("/monthses")
@Controller
@RooWebScaffold(path = "monthses", formBackingObject = Months.class)
public class MonthsController {
}
