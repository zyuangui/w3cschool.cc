package cn.edu.jxnu.dao;

import cn.edu.jxnu.entity.Resource;
import cn.edu.jxnu.entity.Student;

public interface StuDao {

	//学生登录
	public Student login(String stuId, String stuPwd);

	//学生下载资源
	public Resource downloadRes(int resid);

	
	
}
