package cn.edu.jxnu.dao;

import cn.edu.jxnu.entity.User;

public interface UserLoginDao {

	public User login(String userId, String userPwd);

}
