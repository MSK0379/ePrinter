package msk.cloud.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * <p>Title: 实现页面跳转</p>
 * <p>Description: 因为将jsp页面放在WEB-INF中，所以不能直接访问</p>
 * <p>Company: CloudPrinting </p> 
 * @author MSK
 * @date 2017-11-14
 *
 */
@Controller
public class PageController {
	@RequestMapping(value = {"/index"},method = RequestMethod.GET)
	public ModelAndView Index() {
		ModelAndView  mv  = new ModelAndView("index");
		return mv;  
	}
	
	@RequestMapping(value = {"/About"},method = RequestMethod.GET)
	public ModelAndView About() {
		ModelAndView  mv  = new ModelAndView("About");
		return mv;  
	}
	
	@RequestMapping(value = {"/Printing"},method = RequestMethod.GET)
	public ModelAndView Printing() {
		ModelAndView  mv  = new ModelAndView("Printing");
		return mv;  
	}
	@RequestMapping(value = {"/Purpose"},method = RequestMethod.GET)
	public ModelAndView Purpose() {
		ModelAndView  mv  = new ModelAndView("Purpose");
		return mv;  
	}

	@RequestMapping(value = {"/Personal"},method = RequestMethod.GET)
	public ModelAndView Personal() {
		ModelAndView  mv  = new ModelAndView("houtai/Personal");
		return mv;  
	}
	@RequestMapping(value = {"/SignIn"},method = RequestMethod.GET)
	public ModelAndView SignIn() {
		ModelAndView  mv  = new ModelAndView("SignIn");
		return mv;  
	}
	@RequestMapping(value = {"/SignUp"},method = RequestMethod.GET)
	public ModelAndView SignUp() {
		ModelAndView  mv  = new ModelAndView("SignUp");
		return mv;  
	}
	@RequestMapping(value = {"/FindPwd"},method = RequestMethod.GET)
	public ModelAndView FindPwd() {
		ModelAndView  mv  = new ModelAndView("FindPwd");
		return mv;  
	}
	@RequestMapping(value = {"/myError"},method = RequestMethod.GET)
	public ModelAndView goError() {
		ModelAndView  mv  = new ModelAndView("myError");
		return mv;  
	}
}
