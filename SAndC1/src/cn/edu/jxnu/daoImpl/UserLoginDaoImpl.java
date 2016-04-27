package cn.edu.jxnu.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.edu.jxnu.JdbcUtil.JdbcUtil;
import cn.edu.jxnu.dao.UserLoginDao;
import cn.edu.jxnu.entity.User;

public class UserLoginDaoImpl implements UserLoginDao{

	
	//用户登录部分
		@Override
		public User login(String userId, String userPwd) {
			User user=null;
			
			Connection conn=null;
			PreparedStatement ps=null;
			ResultSet rs=null;
			
			try {
				conn=JdbcUtil.getConnection();
				String sql="select * from userinfo where user_Id=? and user_Password=?";
				ps=conn.prepareStatement(sql);
				ps.setString(1,userId);
				ps.setString(2,userPwd);
				rs=ps.executeQuery();
				System.out.println(rs);
				System.out.println("sql="+sql);
				while(rs.next()){
					user=new User();
					user.setUser_id(rs.getString("user_Id"));
					user.setUser_password(rs.getString("user_Password"));
					user.setUser_name(rs.getString("user_Name"));
					user.setUser_age(rs.getString("user_age"));
					user.setUser_sex(rs.getString("user_sex"));
				}
				return user;
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				JdbcUtil.free(rs, ps, conn);
			}
			return user;
			
		}

}
