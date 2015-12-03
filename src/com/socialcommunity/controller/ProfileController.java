package com.socialcommunity.controller;

import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.socialcommunity.domain.Person;
import com.socialcommunity.domain.Post;
import com.socialcommunity.service.PersonService;
import com.socialcommunity.service.PostService;

@Controller
public class ProfileController {
	
protected static Logger logger = Logger.getLogger("ProfileController");
	
	@Resource(name="personService")
	private PersonService personService;
		
	@Resource(name="postService")
	private PostService postService;
	
	private Person person;
	
	private Post Post;
	
	
	  @RequestMapping(value = "/lendingPage/{username}", method = RequestMethod.GET)
	  public ModelAndView profilePage(@PathVariable("username")String username,HttpSession session,Model model) throws HibernateException, NoSuchAlgorithmException
	  {
	    	
	    username=(String) session.getAttribute("username");    

		  ObjectMapper mapper = new ObjectMapper();
		
		  List<Person> list=personService.getUserNameInformation();
		  
			String json = "";
			try {
				json = mapper.writeValueAsString(list);
				System.out.println(json);

			} catch (Exception e) {
				e.printStackTrace();
			}	
			ModelAndView model1 = new ModelAndView("profile");
			
			 model1.addObject("list", json);
			
		return model1;
	  }  
	  @RequestMapping(value = "/lendingPage/public/all", method = RequestMethod.GET)
	  public ModelAndView publicprofilePage(HttpServletRequest request, HttpServletResponse response,Model model) throws HibernateException, NoSuchAlgorithmException
	  {
		  ObjectMapper mapper = new ObjectMapper();
		
		  List<Person> list=personService.getUserNameInformation();
		  
			String json = "";
			try {
				json = mapper.writeValueAsString(list);
				System.out.println(json);

			} catch (Exception e) {
				e.printStackTrace();
			}	
			ModelAndView model1 = new ModelAndView("viewAllUser");
			
			 model1.addObject("list", json);
			
		return model1;
	  }

	  @RequestMapping(value = "/lendingPage/public/{username}", method = RequestMethod.GET)
	  public ModelAndView publicprofile(@PathVariable("username")String user,HttpServletRequest request, HttpServletResponse response,Model model) throws HibernateException, NoSuchAlgorithmException
	  {
		  ObjectMapper mapper = new ObjectMapper();
		
		  String username = request.getParameter("username");
		
		  System.out.println(user);

		  List<Person> list = personService.getUserInformation(user);
		  
		  System.out.println(list);
			String json = "";
			try {
				json = mapper.writeValueAsString(list);
				System.out.println(json);

			} catch (Exception e) {
				e.printStackTrace();
			}	
			ModelAndView model1 = new ModelAndView("profile1");
			
			 model1.addObject("list", json);
			
		return model1;
	  }
	  @RequestMapping(value = "/lendingPage/{username}/post",method = RequestMethod.POST)
	  public @ResponseBody()
	  String add(HttpServletRequest request, HttpServletResponse response,HttpSession session)
	    throws Exception {
	   Post post = new Post();
	   String username=(String) session.getAttribute("username");
	   String post1 = request.getParameter("post_date");
	   
	   System.out.println(post1);
	   Date date=new Date();
	   String date1=""+date.getTime();
	   
	   post.setPost(post1);
	   post.setPost_date(date1);
	   post.setUsername(username);
	   
	   
	   System.out.println(date);
	   
	   postService.addPost(post);
	   
	   return "Submit";
	  }
	  
  @RequestMapping(value = "/lendingPage/public/search",method = RequestMethod.GET)
	  public @ResponseBody()
	  String Search(HttpServletRequest request, HttpServletResponse response,HttpSession session)
	    throws Exception {

		  ObjectMapper mapper = new ObjectMapper();
		
		  List<Person> list=personService.getUserNameInformation();
		  
			String json = "";
			try {
				json = mapper.writeValueAsString(list);
				System.out.println(json);

			} catch (Exception e) {
				e.printStackTrace();
			}	
		    
	   return json;
	  }

  @RequestMapping(value = "/lendingPage/{username}/show",method = RequestMethod.POST)
	  public @ResponseBody()
	  String show(HttpServletRequest request, HttpServletResponse response,HttpSession session)
	    throws Exception {
	   Person person = new Person();
	   String username=(String) session.getAttribute("username");
	 
	   System.out.println(username);
	   
	  List<Person> list = personService.getUserInformation(username);
	   
	  String output = null;
	  
	  for (int i=0; i<list.size(); i++){
		   Person row =  list.get(i);
		   System.out.println("Element "+i+row.getGender());
		   output=row.getFirstName()+":"+row.getLastName()+":"+row.getEmail()+":"+row.getDOB();
		  
		}
	   return output;
	  }
  @RequestMapping(value = "/lendingPage/{username}/list",method = RequestMethod.POST)
	  public @ResponseBody()
	  String list(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws Exception {
	   
	   Post post = new Post();
	   String username=(String) session.getAttribute("username");
	   List<Post> list = postService.getPostInformation(username);
	   String output = "";
	  
	   for (int i=0; i<list.size(); i++){
		   Post row =  list.get(i);
		   System.out.println("Element "+i+row.getPost());
		   output=output+":"+row.getPost();
		   
		}
	 
	  	   return output;
	  	}

  
  @RequestMapping(value = "/lendingPage/public/{username}/list",method = RequestMethod.POST)
  public @ResponseBody()
  String listPublic(@PathVariable("username")String username,HttpServletRequest request, HttpServletResponse response,HttpSession session) throws Exception {
   
   Post post = new Post();
 
   List<Post> list = postService.getPostInformation(username);
   
   System.out.println("Hi"+username);
   
   String output = "";
  
   for (int i=0; i<list.size(); i++){
	   Post row =  list.get(i);
	   System.out.println("Element "+i+row.getPost());
	   output=output+":"+row.getPost();
	   
	}
 
  	   return output;
  	}

  
}
