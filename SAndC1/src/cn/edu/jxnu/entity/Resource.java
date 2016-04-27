package cn.edu.jxnu.entity;

import java.sql.Date;

public class Resource {

	private int res_Id;
	private String res_Name;
	private String res_Type;
	private String res_Introduce;
	private Teacher res_UploaderId;
	private String  res_UploadTime;
	private int res_DownloadNum ;
	private String res_DownloadPath;
	private String res_GoodRes;
	
	
	public Teacher getRes_UploaderId() {
		return res_UploaderId;
	}
	public void setRes_UploaderId(Teacher res_UploaderId) {
		this.res_UploaderId = res_UploaderId;
	}
	public int getRes_Id() {
		return res_Id;
	}
	public void setRes_Id(int res_Id) {
		this.res_Id = res_Id;
	}
	public String getRes_Name() {
		return res_Name;
	}
	public void setRes_Name(String res_Name) {
		this.res_Name = res_Name;
	}
	public String getRes_Type() {
		return res_Type;
	}
	public void setRes_Type(String res_Type) {
		this.res_Type = res_Type;
	}
	public String getRes_Introduce() {
		return res_Introduce;
	}
	public void setRes_Introduce(String res_Introduce) {
		this.res_Introduce = res_Introduce;
	}

    
	public String getRes_UploadTime() {
		return res_UploadTime;
	}
	public void setRes_UploadTime(String res_UploadTime) {
		this.res_UploadTime = res_UploadTime;
	}
	public int getRes_DownloadNum() {
		return res_DownloadNum;
	}
	public void setRes_DownloadNum(int res_DownloadNum) {
		this.res_DownloadNum = res_DownloadNum;
	}
	public String getRes_DownloadPath() {
		return res_DownloadPath;
	}
	public void setRes_DownloadPath(String res_DownloadPath) {
		this.res_DownloadPath = res_DownloadPath;
	}
	public String getRes_GoodRes() {
		return res_GoodRes;
	}
	public void setRes_GoodRes(String res_GoodRes) {
		this.res_GoodRes = res_GoodRes;
	}
	
}
