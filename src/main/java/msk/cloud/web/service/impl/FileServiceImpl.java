package msk.cloud.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import msk.cloud.web.mapper.FileMapper;
import msk.cloud.web.model.SysFile;
import msk.cloud.web.service.FileService;
@Service("FileService")
public class FileServiceImpl implements FileService{
	
	@Autowired
	private FileMapper fileMapper;
	
	@Override
	public int selectFid() {
		// TODO Auto-generated method stub
		return 0;
	}

	/**
	 * 添加数据
	 */
	@Override
	public boolean insertByFile(SysFile sysFile) {
		// TODO Auto-generated method stub
		return fileMapper.insertByFile(sysFile);
	}

	@Override
	public int deleteByFile(SysFile sysFile) {
		// TODO Auto-generated method stub
		return fileMapper.deleteByFile(sysFile);
	}

	@Override
	public List<SysFile> selectFinish(String uphone) {
		// TODO Auto-generated method stub
		return fileMapper.selectFinish(uphone);
	}

	@Override
	public List<SysFile> selectUnFinish(String uphone) {
		// TODO Auto-generated method stub
		return fileMapper.selectUnFinish(uphone);
	}

}
