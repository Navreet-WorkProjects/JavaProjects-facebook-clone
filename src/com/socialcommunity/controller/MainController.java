package com.socialcommunity.controller;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;
import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.springframework.dao.PessimisticLockingFailureException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	private Person person;
	
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
  /*  @RequestMapping(value = "/persons/add", method = RequestMethod.GET)
    public String getAdd(Model model) {
    	logger.debug("Received request to show add page");
    
    	// Create new Person and add to model
    	// This is the formBackingOBject
    	model.addAttribute("personAttribute", new Person());

    	// This will resolve to /WEB-INF/jsp/addpage.jsp
    	return "addpage";
	}
 */
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
		try {
		if (result.hasErrors()) {
		     return "/lendingPage";
		   }
	
		System.out.println(person.getFirstName());
		
		// Call PersonService to do the actual adding
		personService.addUser(person.getPassword(), person);

		
		} catch (Exception e) {
			return "redirect:/lendingPage/error";
		}
		
		
    	// This will resolve to /WEB-INF/jsp/addedpage.jsp
		return "redirect:/lendingPage	";
	}

  @RequestMapping(value = "/lendingPage/login", method = RequestMethod.POST)
  public String login(@ModelAttribute("personlogin") Person person,BindingResult result,HttpSession session) throws HibernateException, NoSuchAlgorithmException
  {
	  
	String userFound=personService.checkLogin(person.getUsername(),person.getPassword()); 
	 
	if(userFound=="success")
	{
		
		session.setAttribute("username",person.getUsername());
		 
		if(person.getUsername().equalsIgnoreCase("admin1")){

			return "redirect:/admin";
		} else {
			return "redirect:/lendingPage/"+person.getUsername();
		}
	
	}
	else
	{
		return "redirect:/lendingPage/error";
	}
      
}

  @RequestMapping(value = "/lendingPage/error", method = RequestMethod.GET)
  public String error() throws HibernateException, NoSuchAlgorithmException
  {
	  
	return "error";
  }

 
  @RequestMapping(value = "/lendingPage/logout", method = RequestMethod.GET)
  public String logout(HttpSession session) throws NoSuchAlgorithmException {
		logger.debug("Received request to add new person");
	
		session.removeAttribute("username");
		if (session != null) {
		    session.invalidate();
		}		
		
  	
		return "redirect:/lendingPage	";
	}
  
/*
  
  @RequestMapping(value = "/getTags", method = RequestMethod.GET)
	public @ResponseBody

	List<Person> getTags(@RequestParam String username,HttpSession session) {
	    username=(String) session.getAttribute("username");
	  
	    List<Person> data =  new ArrayList<Person>();
	    data.add((Person) personService.getAll());
	   List<Person> result = new ArrayList<Person>();
		// iterate a list and filter by tagName
		for (Person person : data) {
			if (person.getUsername().contains(username)) {
				result.add(person)	;
			}
		}

		return simulateSearchResult(username);

	}  
	private List<Person> simulateSearchResult(String tagName) {

		List<Person> result = new ArrayList<Person>();

	
		return result;
	}

 */ 
  
}