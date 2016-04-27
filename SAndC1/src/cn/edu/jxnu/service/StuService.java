package cn.edu.jxnu.service;

import cn.edu.jxnu.entity.Resource;
import cn.edu.jxnu.entity.Student;

public interface StuService {

	//学生登录
	public Student login(String stuId, String stuPwd);

	//学生下载教学资源
	public Resource downloadRes(int resid);

}
