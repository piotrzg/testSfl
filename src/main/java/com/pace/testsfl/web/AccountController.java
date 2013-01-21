package com.pace.testsfl.web;

import com.pace.testsfl.domain.Account;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/accounts")
@Controller
@RooWebScaffold(path = "accounts", formBackingObject = Account.class)
public class AccountController {
}
