package com.project.millionyoutuber;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainRankingTableController {
	
	@GetMapping({"/","/index"})
	public String index(Locale locale, Model model) {
		return "index";
	}
	
}
