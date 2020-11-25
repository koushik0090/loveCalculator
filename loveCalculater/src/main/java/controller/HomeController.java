package controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import dto.*;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String mainPage(@ModelAttribute("data") ValuesDto value) {
		return "index";
	}
	
	@RequestMapping("/homeProcess")
	public String homeProcess(@Valid@ModelAttribute("data") ValuesDto value,BindingResult result) {
		
		if(result.hasErrors())
		{return "index";}
		return "homeProcess";
	}

}
