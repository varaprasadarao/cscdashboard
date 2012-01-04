package com.csc.dashboard.admin.web;

import com.csc.dashboard.admin.model.Users;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/userses")
@Controller
@RooWebScaffold(path = "userses", formBackingObject = Users.class)
public class UsersController {
}
