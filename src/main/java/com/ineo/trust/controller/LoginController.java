/*
 * package com.ineo.trust.controller;
 * 
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpSession;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestMethod; import
 * org.springframework.web.bind.annotation.RequestParam; import
 * org.springframework.web.servlet.ModelAndView;
 * 
 * import com.ineo.trust.model.User; import com.ineo.trust.service.AdminService;
 * 
 * @Controller public class LoginController {
 * 
 * @Autowired private AdminService userService;
 * 
 * @Autowired private HttpServletRequest httpServletRequest;
 * 
 * @RequestMapping(value={"/"}, method = RequestMethod.GET) public ModelAndView
 * index(){ ModelAndView modelAndView = new ModelAndView();
 * modelAndView.setViewName("index"); return modelAndView; }
 * 
 * @RequestMapping(value={"/login"}, method = RequestMethod.POST) public
 * ModelAndView login(@RequestParam String email,@RequestParam String password){
 * String rolePage=userService.findUserByEmail(email); ModelAndView modelAndView
 * = new ModelAndView(); modelAndView.setViewName(rolePage); return
 * modelAndView; }
 * 
 * @RequestMapping(value="/login", method = RequestMethod.GET) public
 * ModelAndView securityLogin(){ ModelAndView modelAndView = new ModelAndView();
 * modelAndView.setViewName("index"); return modelAndView; }
 * 
 * 
 * @RequestMapping(value="/registration", method = RequestMethod.GET) public
 * ModelAndView registration(){ ModelAndView modelAndView = new ModelAndView();
 * User user = new User(); System.err.println("emaillllll"+user.getEmail());
 * modelAndView.addObject("user", user);
 * modelAndView.setViewName("registration"); return modelAndView; }
 * 
 * @RequestMapping(value="/signout") public ModelAndView logout(){
 * 
 * ModelAndView modelAndView = new ModelAndView(); HttpSession session =
 * httpServletRequest.getSession( false ); session.invalidate();
 * modelAndView.setViewName("index"); return modelAndView; }
 * 
 * 
 * @RequestMapping(value = "/registration", method = RequestMethod.POST) public
 * ModelAndView createNewUser(@Valid User user, BindingResult bindingResult) {
 * ModelAndView modelAndView = new ModelAndView();
 * System.err.println("emaillllll"+user.getEmail()); User userExists =
 * userService.findUserByEmail(user.getEmail()); if (userExists != null) {
 * bindingResult .rejectValue("email", "error.user",
 * "There is already a user registered with the email provided"); } if
 * (bindingResult.hasErrors()) { modelAndView.setViewName("registration"); }
 * else { userService.saveUser(user); modelAndView.addObject("successMessage",
 * "User has been registered successfully"); modelAndView.addObject("user", new
 * User()); modelAndView.setViewName("registration");
 * 
 * } return modelAndView; }
 * 
 * 
 * 
 * @RequestMapping(value="/admin/home", method = RequestMethod.GET) public
 * ModelAndView home(){ System.out.println("hiii"); ModelAndView modelAndView =
 * new ModelAndView(); Authentication auth =
 * SecurityContextHolder.getContext().getAuthentication(); User user =
 * userService.findUserByEmail(auth.getName());
 * modelAndView.addObject("userName", "Welcome " + user.getName() + " " +
 * user.getLastName() + " (" + user.getEmail() + ")"); modelAndView.addObject(
 * "adminMessage","Content Available Only for Users with Admin Role");
 * modelAndView.setViewName("admin/home"); return modelAndView; }
 * 
 * @RequestMapping(value="/frontEnd", method = RequestMethod.GET) public
 * ModelAndView frontEnd() { System.out.println("helloooooooo"); ModelAndView
 * model= new ModelAndView(); model.setViewName("frontEnd"); return model; }
 * 
 * @RequestMapping(value = "/home", method = RequestMethod.GET) public
 * ModelAndView home() { ModelAndView modelAndView = new ModelAndView();
 * modelAndView.setViewName("home"); // resources/template/home.html return
 * modelAndView; }
 * 
 * }
 * 
 * 
 * 
 */