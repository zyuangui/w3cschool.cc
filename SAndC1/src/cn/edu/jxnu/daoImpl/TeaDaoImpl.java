package cn.edu.jxnu.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import cn.edu.jxnu.JdbcUtil.JdbcUtil;
import cn.edu.jxnu.dao.TeaDao;
import cn.edu.jxnu.entity.Resource;
import cn.edu.jxnu.entity.Teacher;

public class TeaDaoImpl implements TeaDao {

	//教师登录部分
	@Override
	public Teacher login(String teaId, String teaPwd) {
		/*首先创建一个学生对象*/
		Teacher tea = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = JdbcUtil.getConnection();
			String sql = "select * from teacherinfo where tea_Id=? and tea_Password=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, teaId);
			ps.setString(2, teaPwd);
			rs = ps.executeQuery();
			System.out.println(rs);
			System.out.println("sql"+sql);
			System.out.println("id："+teaId+"pwd:"+teaPwd);
			
			while(rs.next()){
				tea = new Teacher();
				tea.setTea_Id(rs.getString("tea_Id"));
				tea.setTea_Name(rs.getString("tea_Name"));
				tea.setTea_Password(rs.getString("tea_Password"));
				tea.setTea_Nickname(rs.getString("tea_Nickname"));
				tea.setTea_Insititute(rs.getString("tea_Insititute"));
				tea.setTea_Sex(rs.getString("tea_Sex"));
				tea.setTea_Email(rs.getString("tea_Email"));
				tea.setTea_Subject(rs.getString("tea_Subject"));
			
			}
			return tea;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JdbcUtil.free(rs, ps, conn);
		}
		return tea;
	}

	//教师上传教学资源
	@Override
	public boolean uploadRes(Resource res) {
		Connection conn=null;
		Statement stat=null;
		ResultSet re=null;
		
		StringBuffer sb=new StringBuffer();
		sb.append("insert into resourceinfo(res_Name,res_UploaderId,res_UploadTime,res_Type," +
				"res_DownloadPath)");
		sb.append("values('"+res.getRes_Name()+"");
		sb.append("','"+res.getRes_UploaderId().getTea_Id()+"");
		sb.append("','"+res.getRes_UploadTime()+"");
		//sb.append("','"+res.getRes_DownloadNum()+"");
		sb.append("','"+res.getRes_Type()+"");
		sb.append("','"+res.getRes_DownloadPath()+"");
		sb.append("');");
		String sql=sb.toString();
		System.out.println(sql);
		int a=0;
		try {	
			conn=JdbcUtil.getConnection();
			stat=conn.createStatement();
			a=stat.executeUpdate(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JdbcUtil.free(re, stat, conn);
		}
		if(a!=0){
			return true;
		}else{
			return false;
		}

	}

	//寻找教学资源
	@Override
	public List<Resource> findAllRes(String uploaderId) {
		Resource res=null;
		List<Resource> listRes=new ArrayList<Resource>();
		
		Connection conn=null;
		Statement stat=null;
		ResultSet re=null;
		
		String  sql   ="select * from resourceinfo where res_UploaderId='"+uploaderId+"'";
		System.out.println(sql);
		try {
			conn=JdbcUtil.getConnection();
			stat=conn.createStatement();
			re=stat.executeQuery(sql);
			
			while(re.next()){
				res=new Resource();
				res.setRes_Id(re.getInt(1));
				res.setRes_Name(re.getString(2));
				res.setRes_UploadTime(re.getString(6));
				res.setRes_DownloadPath(re.getString(8));
				res.setRes_DownloadNum(re.getInt(7));
				/*ftp.setFtp_WriterId(re.getString(3));*/
				listRes.add(res);	
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JdbcUtil.free(re, stat, conn);
		}
		return listRes;
	}
		

}
