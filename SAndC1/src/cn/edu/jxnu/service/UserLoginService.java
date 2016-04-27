package cn.edu.jxnu.service;

import cn.edu.jxnu.entity.User;

public interface UserLoginService {

	public User login(String userId, String userPwd);

}
