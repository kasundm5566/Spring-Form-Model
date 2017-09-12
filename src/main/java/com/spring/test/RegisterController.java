package com.spring.test;

import java.util.ArrayList;
import java.util.List;

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
public class RegisterController {

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView loadRegistrationView() {
		ModelAndView model = new ModelAndView("register");
		Customer customer = new Customer();
		// ArrayList<String> countries = new ArrayList<String>();
		List<String> countries = new ArrayList<>();
		countries.add("Sri Lanka");
		countries.add("Australia");
		countries.add("Japan");
		model.addObject("countries", countries);
		model.addObject("regForm", customer);
		return model;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView registerCustomer(@Valid @ModelAttribute("regForm") Customer customer, BindingResult result) {
		ModelAndView model;
		if (result.hasErrors()) {
			model = new ModelAndView("register");
			List<String> countries = new ArrayList<>();
			countries.add("Sri Lanka");
			countries.add("Australia");
			countries.add("Japan");
			model.addObject("countries", countries);
		} else {
			model = new ModelAndView("register-success");
		}
		return model;
	}
}
