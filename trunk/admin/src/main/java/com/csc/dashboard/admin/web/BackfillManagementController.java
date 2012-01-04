package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.BackfillManagement;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/backfillmanagements")
@Controller
@RooWebScaffold(path = "backfillmanagements", formBackingObject = BackfillManagement.class)
public class BackfillManagementController {
}
