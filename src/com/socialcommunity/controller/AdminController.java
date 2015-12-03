package com.socialcommunity.controller;

import java.security.NoSuchAlgorithmException;

import java.util.ArrayList;
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

import com.socialcommunity.constants.Status;
import com.socialcommunity.domain.Person;
import com.socialcommunity.domain.Search;
import com.socialcommunity.domain.UpdatePerson;
import com.socialcommunity.service.AdminService;

@Controller
public class AdminController {

	@Resource(name = "adminService")
	private AdminService adminService;
	
	protected static Logger logger = Logger.getLogger("AdminController");
	// username viewed/edited by admin
	private String username;
	// DOB of user
	private String DOB;
	// current status of user
	private Status currentStatus;
	// updated status of user
	private Status updateTheStatus;
	// total number of users
	private Long numberOfUsers;
	// status options to be displayed on jsp dropdown
	private List<Status> statusList = new ArrayList<Status>();

	/**
	 * Getter for updated status
	 * 
	 * @return updated status
	 */
	public Status getUpdateTheStatus() {
		return updateTheStatus;
	}

	/**
	 * Setter for updated status
	 * 
	 * @param updateTheStatus
	 *            updated status
	 */
	public void setUpdateTheStatus(Status updateTheStatus) {
		this.updateTheStatus = updateTheStatus;
	}

	/**
	 * service instance
	 */
	
	/**
	 * Retrieves the admin page
	 * 
	 * @return the name of the JSP page
	 */
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String adminPage(Model model) {
		logger.debug("Received request to show admin page");
		// gets the number of users using the application
		try {
			numberOfUsers = adminService.getUserCount();
			// to send number of users to jsp
			model.addAttribute("numberOfUsers", numberOfUsers);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "admin";
	}

	/**
	 * Redirect to edit user status page
	 * 
	 * @param search
	 *            username passed from the jsp
	 * @param result
	 *            binding result
	 * @return redirect to editUserDetails page
	 * @throws NoSuchAlgorithmException
	 */
	@RequestMapping(value = "/admin/editUserDetails", method = RequestMethod.GET)
	public String searchPerson(@ModelAttribute("searchPerson") Search search,
			BindingResult result) throws NoSuchAlgorithmException {
		logger.debug("Received request by admin to search detail of a person");
		// calling service method to get number of users
		try {
			Person searchResult = adminService.getSearchResult(search
					.getSearchString());
			// DB details retrieved of the user
			username = searchResult.getUsername();
			DOB = searchResult.getDOB();
			if (searchResult.getStatus().equalsIgnoreCase("ACTIVE")) {
				currentStatus = Status.ACTIVE;
			} else if (searchResult.getStatus().equalsIgnoreCase("BLOCK")) {
				currentStatus = Status.BLOCK;
			}
			// reset the update status for new search
			updateTheStatus = null;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/editUserDetails";
	}

	/**
	 * editUserDetailsPage handler method
	 * 
	 * @param model
	 *            to send data from controller to jsp
	 * @return editUserDetailsPage
	 */
	@RequestMapping(value = "/editUserDetails", method = RequestMethod.GET)
	public String editUserDetailsPage(Model model) {
		logger.debug("Received request by admin to displayeditUserDetails Page");
		// adding options to status List to display on jsp
		statusList = new ArrayList<Status>();
		statusList.add(Status.ACTIVE);
		statusList.add(Status.BLOCK);
		// details added to model soa that they can be displayed on jsp page
		model.addAttribute("username", username);
		model.addAttribute("DOB", DOB);
		model.addAttribute("status", currentStatus);
		model.addAttribute("statusList", statusList);
		if (updateTheStatus != null) {
			model.addAttribute("message", "Update Successful");
		} else if (username == null) {
			model.addAttribute("message", "No Records Found");
		}
		model.addAttribute("updatePerson", new UpdatePerson());
		return "editUserDetails";
	}

	/**
	 * Update status handler
	 * 
	 * @param updateStatus
	 *            the status to be updated
	 * @param update
	 *            sending data from jsp to controller
	 * @param result
	 *            binding result
	 * @return editUserDetailsPage
	 * @throws NoSuchAlgorithmException
	 */
	@RequestMapping(value = "/editUserDetails/updatePerson", method = RequestMethod.GET)
	public String updatePerson(@RequestParam String updateStatus,
			@ModelAttribute("updatePerson") UpdatePerson update,
			BindingResult result) throws NoSuchAlgorithmException {
		logger.debug("Received request to update a person");
		// get the status to be updated
		try {
			if (updateStatus.equalsIgnoreCase("ACTIVE")) {
				updateTheStatus = Status.ACTIVE;
			} else if (updateStatus.equalsIgnoreCase("BLOCK")) {
				updateTheStatus = Status.BLOCK;
			}
			// call service method to update the status
			adminService.updatePerson(updateTheStatus, username);
			username =null;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/editUserDetails";
	}

}
