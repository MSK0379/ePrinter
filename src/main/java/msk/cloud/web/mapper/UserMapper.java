package msk.cloud.web.mapper;

import msk.cloud.web.model.SysUser;
/**
 * 
 * <p>Title: mapper接口</p>
 * <p>Description: </p>
 * <p>Company: CloudPrinting </p> 
 * @author MSK
 * @date 2017-11-5
 *
 */
public interface UserMapper {
	
	/**
	 * 根据sysUser对象查询，
	 * 如果返回1，则存在，登陆成功
	 * 如果返回0，则不存在，登陆失败
	 * @param sysUser
	 * @return
	 */
	int selectByUser(SysUser sysUser);
	
	/**
	 * 根据sysUser插入数据
	 * @param sysUser
	 * @return
	 */
	boolean insertByUser(SysUser sysUser);
	
	/**
	 * 根据用户中uphone字段更改umoney
	 * @param sysUser
	 * @return
	 */
	boolean changeMoney(SysUser sysUser);
	/**
	 * 扣钱
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
