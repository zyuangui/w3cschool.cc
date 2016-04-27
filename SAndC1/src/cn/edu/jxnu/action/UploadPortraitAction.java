package cn.edu.jxnu.action;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

import cn.edu.jxnu.entity.Resource;
import cn.edu.jxnu.entity.Teacher;
import cn.edu.jxnu.service.TeaService;
import cn.edu.jxnu.serviceImpl.TeaServiceImpl;
import cn.edu.jxnu.utils.UploadUtils;

import com.opensymphony.xwork2.ActionSupport;

public class UploadPortraitAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private File resource;// 文件域  文件名要与前面的jsp页面中的name的值resource一致
	private String resourceContentType; //文件类型
	private String resourceFileName;  //文件的名称
	
	private String resourcePath;

	public File getResource() {
		return resource;
	}

	public void setResource(File resource) {
		this.resource = resource;
	}

	public String getResourceContentType() {
		return resourceContentType;
	}

	public void setResourceContentType(String resourceContentType) {
		this.resourceContentType = resourceContentType;
	}

	public String getResourceFileName() {
		return resourceFileName;
	}

	public void setResourceFileName(String resourceFileName) {
		this.resourceFileName = resourceFileName;
	}

	public String getResourcePath() {
		return resourcePath;
	}

	public void setResourcePath(String resourcePath) {
		this.resourcePath = resourcePath;
	}
	
	@Override
	public String execute() throws Exception {
		System.out.println("文件类型："+resourceContentType);
		System.out.println("文件名："+resourceFileName);
		System.out.println("resource："+resource);
		this.resourcePath = UploadUtils.savaUploadFile(resource);
		
		/*加入时间*/
		Date date=new Date();
		SimpleDateFormat sdf1=new SimpleDateFormat("yyyy-MM-dd  ");
		String nowDate=sdf1.format(date);
		ServletActionContext.getRequest().setAttribute("nowDate",nowDate);
		System.out.println(nowDate);
		
		// 从session中取得教师对象
		Teacher tea = (Teacher) ServletActionContext.getRequest().getSession()
				.getAttribute("tea");
		System.out.println(tea.getTea_Id());
		Resource res = new Resource();
		res.setRes_Name(resourceFileName);
		res.setRes_Type(resourceContentType);
		res.setRes_DownloadPath(resourcePath);
		res.setRes_UploaderId(tea);
		res.setRes_UploadTime(nowDate);
		TeaService ups = new TeaServiceImpl();
		ups.uploadRes(res);

		return SUCCESS;

	}
}
