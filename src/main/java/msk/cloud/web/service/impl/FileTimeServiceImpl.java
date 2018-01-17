package msk.cloud.web.service.impl;

import msk.cloud.web.mapper.FileTimeMapper;
import msk.cloud.web.model.SysFileTime;
import msk.cloud.web.service.FileTimeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("FileTimeService")
public class FileTimeServiceImpl implements FileTimeService {

	@Autowired
	private FileTimeMapper fileTimeMapper;
	
	@Override
	public boolean insetTimePoint(SysFileTime fileTime) {
		// TODO Auto-generated method stub
		return fileTimeMapper.insetTimePoint(fileTime);
	}

	@Override
	public int selectTimePoint(SysFileTime fileTime) {
		// TODO Auto-generated method stub
		return fileTimeMapper.selectTimePoint(fileTime);
	}

	@Override
	public boolean updateValue(SysFileTime fileTime) {
		// TODO Auto-generated method stub
		return fileTimeMapper.updateSize(fileTime);
	}



}
