package msk.cloud.web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import msk.cloud.web.model.SysFile;
import msk.cloud.web.service.FileService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
/**
 * 
 * <p>Title: 订单查询</p>
 * <p>Description: </p>
 * <p>Company: CloudPrinting </p> 
 * @author MSK
 * @date 2017-12-9
 *
 */
@Controller
@RequestMapping
public class OrdersController {

	@Autowired
	private FileService fileService;

	@RequestMapping(value = "/findFinsh",method = RequestMethod.GET)
	 public ModelAndView selectFinish( HttpServletRequest request ) throws IOException{
		if(request == null){
			return new ModelAndView("SignIn");
		}
		HttpSession session = request.getSession();
		String uphone = (String) session.getAttribute("userName");
		if(uphone == null){
			return new ModelAndView("SignIn");
		}
		List<SysFile> sysList = fileService.selectFinish(uphone);
		ModelAndView mv = new ModelAndView("houtai/Finish");
/*		Iterator<SysFile> it = sysList.iterator();
		List<SysFile> list = new ArrayList<SysFile>();
		while(it.hasNext()) {
			SysFile sysFile = (SysFile) it.next();
			int planTime = sysFile.getFplantime();
			int planday = planTime/288;
			int planhous = (planTime%288)/24;
			int planmin = ((planTime%288)%24)/12 *5;
			System.out.println(planday+"天"+planhous+"点"+planmin+"分");
			sysFile.setFplanday(planday);
			sysFile.setFplanhous(planhous);
			sysFile.setFplanmin(planmin);
			list.add(sysFile);
			
		}*/
		mv.addObject("list", sysList);
		return mv;
		
	}
	@RequestMapping(value = "/findUnFinsh",method = RequestMethod.GET)
	 public ModelAndView selectUnFinish( HttpServletRequest request ) throws IOException{
		if(request == null){
			return new ModelAndView("SignIn");
		}
		HttpSession session = request.getSession();
		String uphone = (String) session.getAttribute("userName");
		if(uphone == null){
			return new ModelAndView("SignIn");
		}
		List<SysFile> sysList = fileService.selectUnFinish(uphone);
		ModelAndView mv = new ModelAndView("houtai/UnFinish");	
		Iterator<SysFile> it = sysList.iterator();
		List<SysFile> list = new ArrayList<SysFile>();
		while(it.hasNext()) {
			SysFile sysFile = (SysFile) it.next();
			int planTime = sysFile.getFplantime();
			int planday = planTime/288;
			int planhous = (planTime%288)/12;
			int planmin = ((planTime%288)%12)*5;
			System.out.println(planday+"天"+planhous+"点"+planmin+"分");
			sysFile.setFplanday(planday);
			sysFile.setFplanhous(planhous);
			sysFile.setFplanmin(planmin);
			list.add(sysFile);
			
		}
		mv.addObject("list", list);
		return mv;
	}
	
}

















