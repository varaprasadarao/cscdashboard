package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.Authorities;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/authoritieses")
@Controller
@RooWebScaffold(path = "authoritieses", formBackingObject = Authorities.class)
public class AuthoritiesController {
}
