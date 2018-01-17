package msk.cloud.web.model;

import java.util.Date;
/**
 * 
 * <p>Title: 文件pojo</p>
 * <p>Description: 包含文件对象的所有内容</p>
 * <p>Company: CloudPrinting </p> 
 * @author MSK
 * @date 2017-11-5
 *
 */
public class SysFile{
    private long fno;

    private String uphone; //与用户相关的信息
    
    private int fprinterno; //打印机地址

    private String fname;	//文件名
    
    private String furl;	//文件保存路径

    private Integer fnum;		//文件页数
    
    private Integer fdownload; 	//是否被打印端下载，未下载为：0
    
    private Integer fprint;		//是否打印true为已打印

    private Integer fside;		//单双面（0单面，1双面）

    private Integer fcolor;		//灰彩色（0：灰色，1：彩色

    private Integer fstart;		//打印开始页

    private Integer fend;		//打印结束页

    private Integer fcopies;		//份数
    
    private Integer fpapersize ;

    private Integer fsidenum;		//每页多少版

    private Integer fstyle;			//横向纵向

    private Date fuploadtime;		//上传时间

    private int fplantime;			//预约时间
    
    private int fplanday;			//求 预约时间 时间点用
    
    private int fplanhous;
    
    private int fplanmin;
    
    private Integer fmodel;		//是否立即打印，0为立即打印
    
    private Integer fspent;
    private Integer fstate;

    
    
	public Integer getFstart() {
		return fstart;
	}

	public void setFstart(Integer fstart) {
		this.fstart = fstart;
	}

	public Integer getFpapersize() {
		return fpapersize;
	}

	public void setFpapersize(Integer fpapersize) {
		this.fpapersize = fpapersize;
	}

	public long getFno() {
		return fno;
	}

	public void setFno(long fno) {
		this.fno = fno;
	}

	public String getUphone() {
		return uphone;
	}

	public void setUphone(String uphone) {
		this.uphone = uphone;
	}

	public int getFprinterno() {
		return fprinterno;
	}

	public void setFprinterno(int fprinterno) {
		this.fprinterno = fprinterno;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getFurl() {
		return furl;
	}

	public void setFurl(String furl) {
		this.furl = furl;
	}

	public Integer getFnum() {
		return fnum;
	}

	public void setFnum(Integer fnum) {
		this.fnum = fnum;
	}

	public Integer getFdownload() {
		return fdownload;
	}

	public void setFdownload(Integer fdownload) {
		this.fdownload = fdownload;
	}


	public Integer getFprint() {
		return fprint;
	}

	public void setFprint(Integer fprint) {
		this.fprint = fprint;
	}

	public Integer getFside() {
		return fside;
	}

	public void setFside(Integer fside) {
		this.fside = fside;
	}

	public Integer getFcolor() {
		return fcolor;
	}

	public void setFcolor(Integer fcolor) {
		this.fcolor = fcolor;
	}



	public Integer getFend() {
		return fend;
	}

	public void setFend(Integer fend) {
		this.fend = fend;
	}

	public Integer getFcopies() {
		return fcopies;
	}

	public void setFcopies(Integer fcopies) {
		this.fcopies = fcopies;
	}

	public Integer getFsidenum() {
		return fsidenum;
	}

	public void setFsidenum(Integer fsidenum) {
		this.fsidenum = fsidenum;
	}

	public Integer getFstyle() {
		return fstyle;
	}

	public void setFstyle(Integer fstyle) {
		this.fstyle = fstyle;
	}

	public Date getFuploadtime() {
		return fuploadtime;
	}

	public void setFuploadtime(Date fuploadtime) {
		this.fuploadtime = fuploadtime;
	}

	
	public int getFplantime() {
		return fplantime;
	}

	public void setFplantime(int fplantime) {
		this.fplantime = fplantime;
	}

	public Integer getFmodel() {
		return fmodel;
	}

	public void setFmodel(Integer fmodel) {
		this.fmodel = fmodel;
	}



	public Integer getFspent() {
		return fspent;
	}

	public void setFspent(Integer fspent) {
		this.fspent = fspent;
	}

	public Integer getFstate() {
		return fstate;
	}

	public void setFstate(Integer fstate) {
		this.fstate = fstate;
	}

	public int getFplanday() {
		return fplanday;
	}

	public void setFplanday(int fplanday) {
		this.fplanday = fplanday;
	}

	public int getFplanhous() {
		return fplanhous;
	}

	public void setFplanhous(int fplanhous) {
		this.fplanhous = fplanhous;
	}

	public int getFplanmin() {
		return fplanmin;
	}

	public void setFplanmin(int fplanmin) {
		this.fplanmin = fplanmin;
	}
    
    

  
}