package msk.cloud.web.controller;

import msk.cloud.web.model.SysFileTime;
import msk.cloud.web.service.FileTimeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itextpdf.text.log.SysoLogger;


/**
 * 
 * <p>Title: 生成时间点在filetime</p>
 * <p>Description: </p>
 * <p>Company: CloudPrinting </p> 
 * @author MSK
 * @date 2017-12-8
 *
 */
@Controller
@RequestMapping
public class FileTimeController {
	@Autowired
	private FileTimeService fileTimeService;
	
    @RequestMapping(value="checkTime")
    @ResponseBody//此注解不能省略 否则ajax无法接受返回值  
    public String checkTime(String fplanday ,String fplanhous ,String fplanmin,String fnum,String fcopies ){
    	int day = Integer.parseInt(fplanday);
    	int hour = Integer.parseInt(fplanhous);
    	int page = Integer.parseInt(fnum);
    	int min = Integer.parseInt(fplanmin);
    	int copies = Integer.parseInt(fcopies);
    	//做简单的验证，防止有人更改数据
    	if(copies == 0 ){
    		return "UNSUCCESS";
    	}
    	System.out.println("验证" + fplanday+"验证" +hour+"验证" +min+"验证" +page);
    	int timePoint = 288*day + 12*hour + min;
    	SysFileTime fileTime = new SysFileTime();
    	fileTime.setTimepoint(timePoint);
    	int size = fileTimeService.selectTimePoint(fileTime);
    	System.out.println("可用容量为"+size);
    	if(size > (page *copies +5)){
    		return "SUCCESS";
    	}else{
    		
    		return "UNSUCCESS";  	
    	}
    }
    /**
     * 提交文件时的方法，不做为action 
     * @param timePoint
     * @param needSize
     * @return
     */
    public boolean changeTime(FileTimeService fileTimeService,int timePoint,int needSize){
    	
    	SysFileTime fileTime = new SysFileTime();
    	//设置对象时间点的值
    	fileTime.setTimepoint(timePoint);
    	//查询剩余容量
    	int size = fileTimeService.selectTimePoint(fileTime);
    	int residueSize = size -(needSize +5);
    	
    	if( residueSize >= 0){
    		System.out.println("提交订单后剩余空间"+residueSize);
    		fileTime.setSize(residueSize);
    		
    		//写入更改后的数据
    		fileTimeService.updateValue(fileTime);
    		return true;
    	}else
    		return false;
 	
    }

}
