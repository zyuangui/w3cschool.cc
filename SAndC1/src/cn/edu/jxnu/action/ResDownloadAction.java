package cn.edu.jxnu.action;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.URLEncoder;

import org.apache.struts2.ServletActionContext;

import cn.edu.jxnu.entity.Resource;
import cn.edu.jxnu.service.StuService;
import cn.edu.jxnu.serviceImpl.StuServiceImpl;

import com.opensymphony.xwork2.ActionSupport;

public class ResDownloadAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private InputStream inputStream;
	private String fileName;

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public InputStream getInputStream() {
		return inputStream;
	}
	
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	@Override
	public String execute() throws Exception {
		Resource res = new Resource(); 
		String root = ServletActionContext.getServletContext().getRealPath("/");
		//根据资源id来查找要下载的资源
		String res_id = ServletActionContext.getRequest().getParameter("res_Id");
		int resid=Integer.parseInt(res_id);
		//System.out.println(resid);
		StuService dows = new StuServiceImpl();
		res = dows.downloadRes(resid);
		//System.out.println("res:"+res);
		//String path = ServletActionContext.getServletContext().getRealPath("/upload");
		String DownloadPath = res.getRes_DownloadPath();
		
		//获取文件的下载路径
		//String path = ServletActionContext.getServletContext().getRealPath("/upload");
		this.fileName = URLEncoder.encode(res.getRes_Name(), "Utf-8");
		System.out.println(this.fileName);
		//File file = new File(res.getRes_DownloadPath()+fileName);
		File f = new File(DownloadPath);
		FileInputStream fi = new FileInputStream(root+f);
		if(fi!=null){
			this.inputStream = fi;
		}
		

		return "download";
	}
}
