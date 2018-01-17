package msk.cloud.web.model;
/**
 * 
 * <p>Title: 用户pojo</p>
 * <p>Description: </p>
 * <p>Company: CloudPrinting </p> 
 * @author MSK
 * @date 2017-10-20
 *
 */
public class SysUser {
    private String uphone;

    private String uname;

    private String upassword;

    private Integer umoney;

	public String getUphone() {
		return uphone;
	}

	public void setUphone(String uphone) {
		this.uphone = uphone;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpassword() {
		return upassword;
	}

	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}

	public Integer getUmoney() {
		return umoney;
	}

	public void setUmoney(Integer umoney) {
		this.umoney = umoney;
	}

 
}