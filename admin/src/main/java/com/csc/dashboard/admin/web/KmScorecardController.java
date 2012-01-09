package com.csc.dashboard.admin.web;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.csc.dashboard.admin.model.KmScorecard;

@RequestMapping("/kmscorecards")
@Controller
@RooWebScaffold(path = "kmscorecards", formBackingObject = KmScorecard.class)
public class KmScorecardController {
}
