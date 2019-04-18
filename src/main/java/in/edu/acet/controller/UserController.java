package in.edu.acet.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import in.edu.acet.bean.TestHistory;
import in.edu.acet.bean.UserDetails;
import in.edu.acet.constants.QueryConstants;
import in.edu.acet.exception.EQException;
import in.edu.acet.idao.ILoginDAO;
import in.edu.acet.idao.IUtilityDAO;

@Controller
public class UserController {

	@Autowired
	private ILoginDAO loginDAO;

	@Autowired
	private IUtilityDAO utilityDAO;

	private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);

	/**
	 * This Controller method is used to load login.jsp Page
	 * 
	 * @param model
	 * @return login
	 **/
	@RequestMapping(value = "/viewLogin")
	public String loginView(@RequestParam(value = "error", required = false) String error, Model model) {
		// model.addAttribute("userDetails", new UserDetails());
		if (error != null && error.trim().equalsIgnoreCase("")) {
			model.addAttribute("error", error);
		}
		return "login";
	}

	/**
	 * This Controller method is used to validate the username and password
	 * 
	 * @param userDetails
	 * @param request
	 * @param response
	 * @param model
	 * @return home or login
	 **/
	@RequestMapping(value = "/login")
	public String login(HttpServletRequest request, HttpServletResponse response, RedirectAttributes model) {
		HttpSession session = request.getSession(false);
		TestHistory testHistory = null;
		if (session == null || session.getAttribute("userDetails") == null) {
			try {
				UserDetails resultBean = loginDAO.isValidUser(request.getRemoteUser());
				if (resultBean != null) {
					session = request.getSession();
					session.setAttribute("userDetails", resultBean);
					session.setAttribute("role", resultBean.getRole());
					model.addFlashAttribute("LOGIN", true);
					if (resultBean.isIsattended()) {
						testHistory = loginDAO.getTestHistory(request.getRemoteUser(), resultBean);
						session.setAttribute("testHistory", testHistory);
						System.err.println("Test History =====> " + testHistory.toString());
					}
				} else {
					model.addFlashAttribute(QueryConstants.ERROR, "Invalid Username or Password!!! Please Try again");
					model.addFlashAttribute("LOGIN", false);
				}
			} catch (EQException exception) {
				LOGGER.info("EQException occurred while trying to check the UserDetails", exception);
				model.addFlashAttribute(QueryConstants.ERROR,
						"EQException occurred while trying to check the UserDetails");
			}
		}
		return "redirect:/viewHome";
	}

	/**
	 * This Controller method is check whether the username is available on the DB
	 * or not
	 * 
	 * @param username
	 * @return true or false
	 **/
	@RequestMapping(value = "/isAvailable", method = RequestMethod.POST)
	@ResponseBody
	public boolean isAvailable(@RequestBody String username) {
		try {
			if (loginDAO.isUserAvailable(username) == null) {
				return true;
			}
		} catch (EQException exception) {
			LOGGER.info("EQException occured while trying to check the Availability of User", exception);
		}
		return false;
	}

	/**
	 * This Controller method is used to load the register.jsp Page
	 * 
	 * @param model
	 * @return register
	 **/
	@RequestMapping(value = "/viewRegister", method = RequestMethod.GET)
	public String registerView(Model model, HttpServletRequest request) {
		if(request.getRemoteUser()==null) {
			model.addAttribute("genderList", utilityDAO.getGenderList());
			model.addAttribute("bloodGroupList", utilityDAO.getBGroupList());
			model.addAttribute("deptList", utilityDAO.getDeptList());
			model.addAttribute("userDetailsRegister", new UserDetails());
			return "register";
		}
		return "redirect:/viewHome";
	}

	/**
	 * This Controller method is used to Register the user
	 * 
	 * @param userDetails
	 * @param request
	 * @param response
	 * @param model
	 * @return home or viewRegister
	 **/
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@ModelAttribute("userDetailsRegister") UserDetails userDetails, HttpServletRequest request,
			HttpServletResponse response, Model model) {
		try {
			if (!loginDAO.createUser(userDetails)) {
				HttpSession session = request.getSession();
				session.setAttribute("userDetails", userDetails);
				session.setAttribute("role", "Student");
			}
		} catch (EQException exception) {
			LOGGER.info("Exception occured while trying trying to Register the User", exception);
			model.addAttribute(QueryConstants.ERROR, "Exception occured while trying trying to Register the User.");
		}
		return "redirect:/viewHome";
	}

}
