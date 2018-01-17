package msk.cloud.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * <p>Title: 登录认证拦截器</p>
 * <p>Description: </p>
 * <p>Company: CloudPrinting </p> 
 * @author MSK
 * @date 2017-11-14
 *
 */
@Controller
public class LoginInterceptor implements HandlerInterceptor{

	/**
	 * 进入Handler方法之前执行
	 * 用于身份认证，身份授权
	 * 比如身份认证表示用户没有登陆，拦截不再向下执行
	 */
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		//获取请求的URL
		//String url = request.getRequestURI();
		//判断url是否是公开地址，（实际使用，应放在配置文件中）
		
		//判断session
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("userName");
		System.out.println("当前用户为"+username);
		if(username != null){
			//身份信息存在
			return true;
		}
		
		//执行到这里表示不是公开路径，并且没有跳转
		request.getRequestDispatcher("SignIn.action").forward(request, response);
		
		return false;
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}


}
