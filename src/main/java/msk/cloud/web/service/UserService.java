package msk.cloud.web.service;

import msk.cloud.web.model.SysUser;

public interface UserService {
	/**
	 * 根据sysUser对象查询，
	 * 如果返回1，则存在，登陆成功
	 * 如果返回0，则不存在，登陆失败
	 * @param sysUser
	 * @return
	 */
	int checkByUser(SysUser sysUser);
	
	/**
	 * 根据sysUser新建用户
	 * @param sysUser
	 */
	boolean addByUser(SysUser sysUser);
	/**
	 * 根据用户中uphone字段更改umoney
	 * @param sysUser
	 * @return
	 */
	boolean changeMoney(SysUser sysUser);
	/**
	 * 查询用户余额
	 * @param uphone
	 * @return
	 */
	int selectMoney(String uphone);
	
	/**
	 * 验证用户是否存在
	 * @param uphone
	 * @return
	 */
	int checkUphone(String uphone);
	
}
