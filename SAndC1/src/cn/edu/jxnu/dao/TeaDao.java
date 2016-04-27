package cn.edu.jxnu.dao;

import java.util.List;

import cn.edu.jxnu.entity.Resource;
import cn.edu.jxnu.entity.Teacher;

public interface TeaDao {

	//教师登录
	public Teacher login(String teaId, String teaPwd);

	//教师上传教学资源&&上传头像
	public boolean uploadRes(Resource res);

	//寻找教学资源
	public List<Resource> findAllRes(String uploaderId);
}
