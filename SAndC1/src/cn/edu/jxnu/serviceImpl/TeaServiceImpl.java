package cn.edu.jxnu.serviceImpl;

import java.util.List;

import cn.edu.jxnu.dao.TeaDao;
import cn.edu.jxnu.daoImpl.TeaDaoImpl;
import cn.edu.jxnu.entity.Resource;
import cn.edu.jxnu.entity.Teacher;
import cn.edu.jxnu.service.TeaService;

public class TeaServiceImpl implements TeaService {

    //教师登录
	@Override
	public Teacher login(String teaId, String teaPwd) {
		TeaDao logindao = new TeaDaoImpl();
		return logindao.login(teaId,teaPwd);
	}

	//教师上传教学资源
	@Override
	public boolean uploadRes(Resource res) {
		TeaDao upd = new TeaDaoImpl();
		return upd.uploadRes(res);
	}

	//寻找教学资源
	@Override
	public List<Resource> findAllRes(String uploaderId) {
		TeaDao finds=new TeaDaoImpl();
		return finds.findAllRes(uploaderId);
	}

	
}
