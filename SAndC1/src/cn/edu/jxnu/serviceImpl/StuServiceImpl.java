package cn.edu.jxnu.serviceImpl;

import cn.edu.jxnu.dao.StuDao;
import cn.edu.jxnu.daoImpl.StuDaoImpl;
import cn.edu.jxnu.entity.Resource;
import cn.edu.jxnu.entity.Student;
import cn.edu.jxnu.service.StuService;

public class StuServiceImpl implements StuService {

	/*学生登录*/
	@Override
	public Student login(String stuId, String stuPwd) {
		StuDao logindao = new StuDaoImpl();
		return logindao.login(stuId,stuPwd);
	}

	//学生下载资源
	@Override
	public Resource downloadRes(int resid) {
		StuDao dowd = new StuDaoImpl();
		return dowd.downloadRes(resid);
	}
	
	

}
