package cn.edu.jxnu.service;

import java.util.List;

import cn.edu.jxnu.entity.Resource;
import cn.edu.jxnu.entity.Teacher;

public interface TeaService {

	 //教师登录
	public Teacher login(String teaId, String teaPwd);
    
	//教师上传教学资源
	public boolean uploadRes(Resource res);
	
	//寻找教学资源
	public List<Resource> findAllRes(String uploaderId);
}
