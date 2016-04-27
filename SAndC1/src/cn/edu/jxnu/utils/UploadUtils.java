package cn.edu.jxnu.utils;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.apache.struts2.ServletActionContext;

public class UploadUtils {

	public static String savaUploadFile(File upload){
	//把日期格式转化为字符串的一个帮助类
		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/");
		/**
		 * 得到文件夹的绝对路径
		 * ServletActionContext
		 * =
		 * ```\software\Tomact7.0\webapps\struts2_demo0416_upload/WebRoot/upload/2016/04/16/aa163838392
		 */	
		String basePath=ServletActionContext.getServletContext().getRealPath("/upload");
		//将日期类型格式化为/yyyy/MM/dd这种形式的字符串
		String subPath  = sdf.format(new Date());
		//先做个判断，如果文件夹不存在，就创建文件夹
		File dir = new File(basePath+subPath);
		if(!dir.exists()){
			
			dir.mkdirs();
			//此处是dir.mkdirs()而不是dir.mkdir(),因为此处要创建的是多个文件夹
			/*dir.mkdir();*/
		}
		String uuidPath = subPath + UUID.randomUUID();
		String path = basePath+uuidPath.toString();
		System.out.println("这是什么？"+path);
		//加ext 读取文件的后缀名
		String ext = ServletActionContext.getRequest().getAttribute("resourceFileName").toString().substring(
				ServletActionContext.getRequest().getAttribute("resourceFileName").toString().lastIndexOf("."));
		
		File dest = new File(path+ext);	
		//往context的map中插入一个 文件地址的key,之后在jsp中读取
		/*ActionContext.getContext().put("fileName", path+ext);*/
		upload.renameTo(dest);//将文件移动到的dest处
		return "upload"+uuidPath.toString()+ext;
		//return path;
	}
}
