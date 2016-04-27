package cn.edu.jxnu.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import cn.edu.jxnu.service.TeaService;
import cn.edu.jxnu.serviceImpl.TeaServiceImpl;
import cn.edu.jxnu.entity.Resource;
import cn.edu.jxnu.entity.Teacher;
import com.opensymphony.xwork2.ActionSupport;

public class TeaFindResAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//寻找相关教师已经上传的教学资源
	@Override
	public String execute() throws Exception {
		/*首先设置编码*/
		ServletActionContext.getRequest().setCharacterEncoding("utf-8");
		ServletActionContext.getResponse().setContentType("text/html");
		
		//从session中获取到教师这个对象，然后从这个对象中取出他的一个属性id
		Teacher tea=(Teacher) ServletActionContext.getRequest().getSession().getAttribute("tea");	
		System.out.println(tea);
		//System.out.println(tea.getTea_Id());
		String uploaderId = tea.getTea_Id();
		/*String uploaderId=tea.getTea_Id();*/
		System.out.println("上传者Id："+uploaderId);
		
		List<Resource> resList=null;
		
		TeaService findRes=new TeaServiceImpl();
		resList=findRes.findAllRes(uploaderId);
		
		ServletActionContext.getRequest().setAttribute("teaId",uploaderId);
		ServletActionContext.getRequest().setAttribute("resList",resList);
		
		
		return SUCCESS;
	}
}
