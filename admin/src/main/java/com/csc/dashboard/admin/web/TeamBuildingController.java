package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.TeamBuilding;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/teambuildings")
@Controller
@RooWebScaffold(path = "teambuildings", formBackingObject = TeamBuilding.class)
public class TeamBuildingController {
}
