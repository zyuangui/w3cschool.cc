package cn.edu.jxnu.action;

import org.apache.struts2.ServletActionContext;

import cn.edu.jxnu.entity.User;
import cn.edu.jxnu.service.UserLoginService;
import cn.edu.jxnu.serviceImpl.UserLoginServiceImpl;

import com.opensymphony.xwork2.ActionSupport;

public class UserLoginAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String execute() throws Exception {
		ServletActionContext.getRequest().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setContentType("text/html");
		String userId = ServletActionContext.getRequest()
				.getParameter("userId");
		String userPwd = ServletActionContext.getRequest().getParameter(
				"userPwd");
		System.out.println("用户编号为：" + userId + "密码为：" + userPwd);

		UserLoginService logins = new UserLoginServiceImpl();
		User user = null;

		user = logins.login(userId, userPwd);
		ServletActionContext.getRequest().getSession()
				.setAttribute("user", user);

		if (user != null) {
			return SUCCESS;

		} else {
			return ERROR;
		}
	}
}
