package msk.cloud.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import msk.cloud.web.model.SysUser;
import msk.cloud.web.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
/** 
 * <p>Title:用户相关Controller </p>
 * <p>Description: 实现了用户注册，登陆等功能 </p>
 * <p>Company: CloudPrinting </p> 
 * @author MSK
 * @date 2017-11-5
 * 
 */
@Controller
@RequestMapping
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/regist")  
    public String regist(SysUser sysUser ,HttpSession session,  Model model )throws Exception{  
          
        System.out.println("用户注册："+sysUser.getUphone()+sysUser.getUpassword());   
        
        if(userService.checkByUser(sysUser) == 0){       	
        	userService.addByUser(sysUser);
        	model.addAttribute("msg", "注册成功");
        	session.setAttribute("userName", sysUser.getUphone());
        	return "redirect:/Personal.action";  
        }else{
        	model.addAttribute("msg", "用户名已经被使用，请您使用自己的账户注册，同时可能您的朋友使用您的电话号注册，" +
        			"因为此项目暂时为孵化项目，没有采用手机短信验证，因此给您带来的不便，非常抱歉，您的信息绝对不会泄露给其他人，" +
        			"如果想找回您的账户，请联系我们：182 9287 7903");
        	return "SignUp";
        }
    }  
      
    @RequestMapping("/login")  
    public String login(SysUser sysUser,HttpServletRequest  request, HttpSession session, Model model)throws Exception{  
          
        System.out.println("用户登录："+sysUser.getUphone()+sysUser.getUpassword());  
        
        
        if(userService.checkByUser(sysUser) == 1){
        	//获得上次访问action，即被拦截的action
        	String url = request.getHeader("Referer");
        	System.out.println(url);
        	//登陆后不显示您的姓名，显示登陆手机号，但是你也可以在这里将userName赋值为Uname
        	String action = url.substring(url.lastIndexOf("/"));
        	System.out.println(action);
        	session.setAttribute("userName", sysUser.getUphone());
        	String username = (String) session.getAttribute("userName");
    		System.out.println("登陆用户为"+username);
    		//点击登陆图标进入登陆界面，则上次访问的action为login.action，即不是被拦截器拦截的action，所以登陆完成后仍旧再login页面。
    		//判断一下登陆方式，若是这种登陆的话，进入主页。
    		if(action.equals("/SignIn.action"))
    			return "redirect:/index.action";
    		else
    			return "redirect:"+action;  
        }else{
        	
        	model.addAttribute("msg", "用户名或密码不正确，请重新输入");
        	return "SignIn";
        }
    }
    @RequestMapping(value="checkUphone")
    @ResponseBody//此注解不能省略 否则ajax无法接受返回值  
    public String checkUphone(String uphone){
    	System.out.println("验证" + uphone);
    	if(userService.checkUphone(uphone) == 0){
    		return "SUCCESS";
    	}else{
    		
    		return "UNSUCCESS";  	
    	}
    }
    /**
     * 更改密码
     * @return
     */
    @RequestMapping("changePwd")
    public ModelAndView changePwd(){
    	ModelAndView  mv  = new ModelAndView("houtai/ChangePwd");
		return mv; 
    }
    
    /**
     * 退出登陆
     * @param session
     * @return
     */
    @RequestMapping("/logout")
    public String logout(HttpSession session){
    	//session 过期
    	session.invalidate();
    	System.out.println("您已退出");
		return "index";
    	
    }
}
