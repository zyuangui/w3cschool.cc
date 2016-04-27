package cn.edu.jxnu.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.struts2.ServletActionContext;


import cn.edu.jxnu.entity.Student;
import cn.edu.jxnu.service.StuService;
import cn.edu.jxnu.serviceImpl.StuServiceImpl;

import com.opensymphony.xwork2.ActionSupport;

public class StuLoginAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/*学生登录*/
	@Override
	public String execute() throws Exception {
		/*首先设置编码格式*/
		ServletActionContext.getRequest().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setContentType("text/html");
		/*获取用户请求的参数*/
		String stuId = ServletActionContext.getRequest().getParameter("stuId");
		String stuPwd = ServletActionContext.getRequest().getParameter("stuPwd");
		/*获取到请求参数之后在控制台分别打印输出所接收到的参数*/
		System.out.println("接收到的学生id为："+stuId+"接收到学生密码为："+stuPwd);
		StuService  logins = new StuServiceImpl();
		Student stu=null;
		
		/*加入时间*/
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
		String nowDate=sdf.format(date);
		
		stu = logins.login(stuId,stuPwd);
		/*将返回来的学生信息保存在session中*/
		ServletActionContext.getRequest().getSession().setAttribute("stu", stu);
		ServletActionContext.getRequest().setAttribute("nowDate",nowDate);
		
		/*判断如果学生存在，那么返回success，跳转到学生主页面，否则停留在此页面重新登录*/
		if(stu!=null){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	
	

}
