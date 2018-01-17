package msk.cloud.web.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.Box.Filler;

import msk.cloud.web.model.SysFile;
import msk.cloud.web.model.SysUser;
import msk.cloud.web.service.FileService;
import msk.cloud.web.service.FileTimeService;
import msk.cloud.web.service.UserService;
import msk.cloud.web.toolFun.FileTool;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 * 
 * <p>Title: file上传Controller</p>
 * <p>Description: 实现文件上传的处理</p>
 * <p>Company: CloudPrinting </p> 
 * @author MSK
 * @date 2017-11-5
 *
 */
@Controller
public class FileController {
	@Autowired
	private FileService fileService;
	@Autowired
	private UserService userService;
	@Autowired
	private FileTimeService fileTimeService;
	
	@RequestMapping(value = "/upload",method = RequestMethod.POST)
//	@ModelAttribute("fileDate")//数据回显
	@ResponseBody
	 public Map<String, Object> upload(@RequestParam("myFile") MultipartFile uploadFile,
			 SysFile sysFile, HttpServletRequest request
			 ,Model model ) throws IOException{
		
		request.setCharacterEncoding("UTF-8");
		//定义返回的json
		Map<String, Object> json = new HashMap<String, Object>();
		
		int page = 0 ;//定义文件页数
		//获得文件路径
		String path = request.getSession().getServletContext().getRealPath("upload");
		HttpSession session = request.getSession();
		session.setAttribute("file", null);
		String uphone = (String) session.getAttribute("userName");
		System.out.println(uphone);
		path = path +"/"+uphone+"/";
		System.out.println(path);
		//获得文件名
        String fileName = uploadFile.getOriginalFilename();    
        //拼接出UUID的名称，防止文件重名
        String newFileName = UUID.randomUUID() + fileName.substring(fileName.lastIndexOf("."));
        
        File dir = new File(path,newFileName);
        
        if(!dir.exists()){  
            dir.mkdirs();  
        }  
       //拷贝到指定目录
        uploadFile.transferTo(dir);  
        //获得文件页数
		try {
			page = FileTool.getFilePages(dir.getAbsolutePath());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			json.put("error", "文件读取错误");
		}
		session.setAttribute("file", fileName);
		
        //返回收集到的文件
        /*model.addAttribute("furl", dir.getAbsolutePath());
        model.addAttribute("fileName", fileName);
        model.addAttribute("furl", page);*/
        json.put("furl", dir.getAbsolutePath());
        json.put("fileName", fileName);
        json.put("aa", "上传成功");
        json.put("page", page);
        
        
        return json;  
	}
	
	/**
	 * 
	 * @param sysFile
	 * @param request
	 * @param model
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "/print",method = RequestMethod.POST)
	 public String print(SysFile sysFile, HttpServletRequest request
			 ,Model model ) throws IOException{
		//接收订单请求
		//获取订单信息
		System.out.println(sysFile.getFurl()+"---"+sysFile.getFcopies()+"---"+sysFile.getFname());
		if(sysFile != null){
			//获取用户余额及计算价格，并更改余额
			HttpSession session =  request.getSession();
			String uphone = (String) session.getAttribute("userName");
			sysFile.setUphone(uphone);
//			System.out.println("查询给用户："+sysFile.getUphone());
			
			int umoney = userService.selectMoney(sysFile.getUphone());
			System.out.println("结果为"+umoney+"----"+"页数为："+ sysFile.getFend()+"和"+sysFile.getFside());
			//价钱应该等于 price = (结束页 - 开始页)*单双面*彩色/灰色价格 * 份数
			int pirce = (sysFile.getFend()-sysFile.getFstart())*sysFile.getFside()*sysFile.getFcolor()*sysFile.getFcopies();
			//umoney肯定大于pirce
			
			SysUser sysUser = new SysUser();
			sysUser.setUphone(sysFile.getUphone());
			sysUser.setUmoney(umoney-pirce);
			
			//获取时间点
			int day = sysFile.getFplanday();
			int hous = sysFile.getFplanhous();
			int min = sysFile.getFplanmin();
			int time = 288*day + 12 * hous + min;
			
			sysFile.setFplantime(time);
			//无需在前台页面配置的参数初始化
			sysFile.setFdownload(0);
			sysFile.setFprint(0);
			sysFile.setFuploadtime(new Date());
			sysFile.setFmodel(0);
			sysFile.setFspent(sysFile.getFnum());
			sysFile.setFstate(0);
			//调用方法进行插入
			//先更新时间内容量，再写入数据
			FileTimeController fileTimeController = new FileTimeController();
			//计算需要的尺寸，（其实就是计算打印所需要的时间，应该将单双面以及彩印对时间的影响加上，但是目前打印机只能单面打印黑白，所以暂时不考虑）
			//本应该+1的但是在减的时候多减了一个冗余量，因此为了减少计算。在此不减1了
			int needSize = (sysFile.getFend()-sysFile.getFstart()) * sysFile.getFcopies();
			if(fileTimeController.changeTime(fileTimeService,time, needSize)){
				//扣时间成功，开始插入数据，成功了开始扣钱
				if(fileService.insertByFile(sysFile)){
					
					//插入成功
					/**
					 * 扣钱,在前面实现
					 * 1.获得uphone
					 * 2.获取该用户账户余额
					 * 3.处理余额
					 * 4.
					 */
					
					userService.changeMoney(sysUser);	
					//等 修改了剩余尺寸，插入数据，扣钱 后进入订单管理
					return "redirect:/findUnFinsh.action"; //重定向到个人中心（应该是在订单管理界面）
				}
				
				
			}
		}
		//无论那一步出现问题，均执行重定向到打印界面：缺陷，没有提示。
		model.addAttribute("error", "操作不当，导致订单没有完成，请重新开始");
		return "redirect:/Printing.action";
		 
	 }
	
}
