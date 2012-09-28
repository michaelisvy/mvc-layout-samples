package controller;

import java.util.ArrayList;
import java.util.List;

import model.User;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class UserController {
	
	@RequestMapping(value="/users/all/jsp-plain",method=RequestMethod.GET)
	public String findUsersPlain(Model model){
		buildUserList(model);
		model.addAttribute("title", "Users List - Plain JSP");
		return "01-plain/users";
	}
	
	@RequestMapping(value="/users/all/custom-tags",method=RequestMethod.GET)
	public String findUsersTags(Model model){
		buildUserList(model);
		model.addAttribute("title", "Users List - Custom tags");
		return "02-custom-tags/users";
	}
	
	@RequestMapping(value="/users/all/tiles",method=RequestMethod.GET)
	public String findUsersTiles(Model model){
		buildUserList(model);
		model.addAttribute("title", "Users List - Tiles");
		return "tiles/users";
	}
	
	@RequestMapping(value="/users/all/thymeleaf",method=RequestMethod.GET)
	public String findUsersThymeLeaf(Model model){
		buildUserList(model);
		model.addAttribute("title", "Users List - Thymeleaf");
		return "thymeleaf/users";
	}

	private void buildUserList(Model model) {
		List<User> users = new ArrayList<User>();
		users.add(new User("Paul", "Chapman"));
		users.add(new User("Mike", "Wiesner"));
		users.add(new User("Mark", "Secrist"));
		users.add(new User("Ken", "Krueger"));
		model.addAttribute("users", users);
	}
	
	
}
