package cn.edu.jxnu.serviceImpl;

import cn.edu.jxnu.dao.UserLoginDao;
import cn.edu.jxnu.daoImpl.UserLoginDaoImpl;
import cn.edu.jxnu.entity.User;
import cn.edu.jxnu.service.UserLoginService;

public class UserLoginServiceImpl implements UserLoginService{

	@Override
	public User login(String userId, String userPwd) {
		
		UserLoginDao logindao=new UserLoginDaoImpl();
		return logindao.login(userId, userPwd);
	}
}
