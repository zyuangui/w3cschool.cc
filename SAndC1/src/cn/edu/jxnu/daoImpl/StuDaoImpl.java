package cn.edu.jxnu.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.edu.jxnu.JdbcUtil.JdbcUtil;
import cn.edu.jxnu.dao.StuDao;
import cn.edu.jxnu.entity.Resource;
import cn.edu.jxnu.entity.Student;

public class StuDaoImpl implements StuDao {

	/*学生登录部分*/
	@Override
	public Student login(String stuId, String stuPwd) {
		/*首先创建一个学生对象*/
		Student stu = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = JdbcUtil.getConnection();
			String sql = "select * from studentinfo where stu_Id=? and stu_Password=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, stuId);
			ps.setString(2, stuPwd);
			rs = ps.executeQuery();
			System.out.println(rs);
			System.out.println("sql"+sql);
			
			while(rs.next()){
				stu = new Student();
				stu.setStu_Id(rs.getString("stu_Id"));
				stu.setStu_Name(rs.getString("stu_Name"));
				stu.setStu_Password(rs.getString("stu_Password"));
				stu.setStu_Nickname(rs.getString("stu_Nickname"));
				stu.setStu_Institute(rs.getString("stu_Institute"));
				stu.setStu_Class(rs.getString("stu_Class"));
				stu.setStu_Sex(rs.getString("stu_Sex"));
				stu.setStu_Email(rs.getString("stu_Email"));
			}
			return stu;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JdbcUtil.free(rs, ps, conn);
		}
		return stu;
	}

	/**
	 * 学生下载教学资源
	 */
	@Override
	public Resource downloadRes(int resid) {
		Resource res = null;
		
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			conn=JdbcUtil.getConnection();
			String sql="select * from resourceinfo where res_id=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1,resid);
			rs=ps.executeQuery();
			while(rs.next()){
				res=new Resource();
				res.setRes_Id(rs.getInt("res_id"));
				res.setRes_Name(rs.getString("res_Name"));
				res.setRes_Type(rs.getString("res_Type"));
				//res.setRes_Introduce(rs.getString("res_Introduce"));
			    //ResourceInfo.setRes_UploaderId(rs.getString("res_UploaderId"));
				//res.setRes_UploadTime(rs.getDate("res_UploadTime"));
				//res.setRes_DownloadNum(rs.getInt("res_DownloadNum"));
				res.setRes_DownloadPath(rs.getString("res_DownloadPath"));
				//res.setRes_GoodRes(rs.getString("res_GoodRes"));
			}
			return res;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JdbcUtil.free(rs, ps, conn);
		}
		System.out.println("这是什么？"+res);
		return res;
	}

}
