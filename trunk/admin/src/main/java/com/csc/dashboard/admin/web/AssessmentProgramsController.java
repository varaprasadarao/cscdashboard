package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.AssessmentPrograms;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/assessmentprogramses")
@Controller
@RooWebScaffold(path = "assessmentprogramses", formBackingObject = AssessmentPrograms.class)
public class AssessmentProgramsController {
}
