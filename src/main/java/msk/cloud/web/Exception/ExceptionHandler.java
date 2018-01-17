package msk.cloud.web.Exception;


import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.HandlerExceptionResolver;  
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;  
/**
 *   
 * <p>Title: 程序异常拦截</p>
 * <p>Description: 通过实现HandlerExceptionResolver接口跳转页面</p>
 * <p>Company: CloudPrinting </p> 
 * @author MSK
 * @date 2017-12-5
 *
 */
@Controller
public class ExceptionHandler  implements HandlerExceptionResolver  {

	@Override
	public ModelAndView resolveException(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex) {
		// TODO Auto-generated method stub
		System.out.println("错误页面被拦截");
		return new ModelAndView("myError"); 
	}  
  
  
}