package com.socialcommunity.controller;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.socialcommunity.domain.Person;
import com.socialcommunity.service.PersonService;

/**
 * Handles and retrieves User request
 */
@Controller
public class MainController {

	protected static Logger logger = Logger.getLogger("controller");
	
	@Resource(name="personService")
	private PersonService personService;
	
	/**
	 * Handles and retrieves all persons and show it in a JSP page
	 * 
	 * @return the name of the JSP page
	 */
	@RequestMapping(value = "/lendingPage",method = RequestMethod.GET)
	public String lendingPage()
	{
		return "index";
		
		
	}
	
	
    /**
     * Retrieves the add page
     * 
     * @return the name of the JSP page
     */
    @RequestMapping(value = "/persons/add", method = RequestMethod.GET)
    public String getAdd(Model model) {
    	logger.debug("Received request to show add page");
    
    	// Create new Person and add to model
    	// This is the formBackingOBject
    	model.addAttribute("personAttribute", new Person());

    	// This will resolve to /WEB-INF/jsp/addpage.jsp
    	return "addpage";
	}
 
    /**
     * Adds a new person by delegating the processing to PersonService.
     * Displays a confirmation JSP page
     * 
     * @return  the name of the JSP page
     * @throws NoSuchAlgorithmException 
     */
    
    @RequestMapping(value = "/lendingPage/add", method = RequestMethod.POST)
    public String addPerson(@ModelAttribute("personAttribute") Person person,BindingResult result) throws NoSuchAlgorithmException {
		logger.debug("Received request to add new person");
		
    	// The "personAttribute" model has been passed to the controller from the JSP
    	// We use the name "personAttribute" because the JSP uses that name
		
		if (result.hasErrors()) {
		     return "/lendingPage";
		   }
		
		
		// Call PersonService to do the actual adding
		personService.addUser(person.getPassword(), person);

    	// This will resolve to /WEB-INF/jsp/addedpage.jsp
		return "redirect:/lendingPage";
	}
    
    
    
    
    
   
    
   
   
    
}
