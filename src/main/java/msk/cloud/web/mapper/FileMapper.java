package msk.cloud.web.mapper;

import java.util.List;

import msk.cloud.web.model.SysFile;
/**
 * 
 * <p>Title: mapper接口</p>
 * <p>Description: </p>
 * <p>Company: CloudPrinting </p> 
 * @author MSK
 * @date 2017-11-5
 *
 */
public interface FileMapper {
	/**
	 * 上传文件所需的方法
	 * @return
	 */
	int selectFid();
	
	/**
	 * 提交订单进行的操作
	 * @param sysFile
	 * @return
	 */
	boolean insertByFile(SysFile sysFile);
	
	/**
	 * 删除订单所需操作,删除成功返回0，删除失败返回1
	 * @param sysFile
	 * @return
	 */
	int deleteByFile(SysFile sysFile);
	/**
	 * 查询已完成订单
	 * @param uphone
	 * @return
	 */
	List<SysFile> selectFinish(String uphone);
	/**
	 * 查询未完成订单
	 * @param uphone
	 * @return
	 */
	List<SysFile> selectUnFinish(String uphone);
	
	
	
}
