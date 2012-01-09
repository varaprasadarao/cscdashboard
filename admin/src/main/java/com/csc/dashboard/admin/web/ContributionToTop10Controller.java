package com.csc.dashboard.admin.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.csc.dashboard.admin.model.ContributionToTop10;

@RequestMapping("/contributiontotop10s")
@Controller
@RooWebScaffold(path = "contributiontotop10s", formBackingObject = ContributionToTop10.class)
public class ContributionToTop10Controller {
}
