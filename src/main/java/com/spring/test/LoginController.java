package com.spring.test;

import javax.validation.Valid;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("cust")
public class LoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView viewLogin() {
		ModelAndView modelAndView = new ModelAndView("login");
		Customer customer = new Customer();
		modelAndView.addObject("loginForm", customer);
		return modelAndView;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView validateLogin(@Valid @ModelAttribute("loginForm") Customer customer, BindingResult result) {
		ModelAndView modelAndView;
		if (result.hasErrors()) {
			modelAndView = new ModelAndView("login");
		} else {
			modelAndView = new ModelAndView("login-success");
			modelAndView.addObject("customer", customer);
			modelAndView.addObject("cust", customer);
		}
		return modelAndView;
	}
}
