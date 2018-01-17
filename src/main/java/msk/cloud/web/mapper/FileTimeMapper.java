package msk.cloud.web.mapper;

import msk.cloud.web.model.SysFileTime;

/**
 * 
 * <p>Title: 生成时间点在filetime</p>
 * <p>Description: </p>
 * <p>Company: CloudPrinting </p> 
 * @author MSK
 * @date 2017-12-8
 *
 */
public interface FileTimeMapper {

	/**
	 * 生成时间点在filetime
	 * @param fileTime
	 * @return
	 */
	boolean insetTimePoint(SysFileTime fileTime);
	/**
	 * 查询选择时间点的剩余可打印数
	 * @param fileTime
	 * @return
	 */
	int selectTimePoint(SysFileTime fileTime);
	/**
	 * 更新时间点对应的剩余容量
	 * @param fileTime
	 */
	boolean updateSize(SysFileTime fileTime);
	

}
