package cn.edu.jxnu.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

import cn.edu.jxnu.entity.Teacher;
import cn.edu.jxnu.service.TeaService;
import cn.edu.jxnu.serviceImpl.TeaServiceImpl;

import com.opensymphony.xwork2.ActionSupport;

public class TeaLoginAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/*教师登录*/
	@Override
	public String execute() throws Exception {
		/*首先设置编码*/
		ServletActionContext.getRequest().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setContentType("text/html");
		
		//获取用户请求的参数
		String teaId = ServletActionContext.getRequest().getParameter("teaId");
		String teaPwd = ServletActionContext.getRequest().getParameter("teaPwd");
		
		//在获取到参数之后在控制台分别打印输出接收到的参数
		System.out.println("接收到的教师id为："+teaId+"接收到的教师密码为："+teaPwd);
		TeaService logins = new TeaServiceImpl();
		Teacher tea = null;
		tea=logins.login(teaId,teaPwd);
		
		/*加入时间*/
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
		String nowDate=sdf.format(date);
		
		
		
		ServletActionContext.getRequest().setAttribute("tea", tea);
		//在此处将教师对象保存在session中，是为了后面从session将tea对象取出来，调用它的某个属性
		ServletActionContext.getContext().getSession().put("tea", tea);
		ServletActionContext.getRequest().setAttribute("nowDate",nowDate);
		
		/*判断如果教师存在，那么返回success，跳转到教师主页面，否则停留在此页面重新登录*/
		if(tea!=null){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}

}
