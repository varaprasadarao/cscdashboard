package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.MonthDef;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/monthdefs")
@Controller
@RooWebScaffold(path = "monthdefs", formBackingObject = MonthDef.class)
public class MonthDefController {
}
