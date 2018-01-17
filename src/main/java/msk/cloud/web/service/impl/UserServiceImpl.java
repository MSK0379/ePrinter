package msk.cloud.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import msk.cloud.web.mapper.UserMapper;
import msk.cloud.web.model.SysUser;
import msk.cloud.web.service.UserService;

@Service("UserService")
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	
	/**
	 * 登陆时查询用户
	 */
	@Override
	public int checkByUser(SysUser sysUser) {
//		System.out.println("登陆用户++++ServiceImpl"+sysUser.getUname()+"------"+sysUser.getUpassword());
		return userMapper.selectByUser(sysUser);
	}
	/**
	 * 注册用户
	 */
	@Override
	public boolean addByUser(SysUser sysUser) {
		sysUser.setUmoney(20);
//		System.out.println("注册用户++++ServiceImpl"+sysUser.getUname()+"------"+sysUser.getUpassword()+"+++++++++++"+sysUser.getUmoney());
		return userMapper.insertByUser(sysUser);	
	}
	@Override
	public boolean changeMoney(SysUser sysUser) {
		// TODO Auto-generated method stub
		return userMapper.changeMoney(sysUser);
	}
	@Override
	public int selectMoney(String uphone) {
		// TODO Auto-generated method stub
		return userMapper.selectMoney(uphone);
	}
	@Override
	public int checkUphone(String uphone) {
		// TODO Auto-generated method stub
		return userMapper.checkUphone(uphone);
	}

}
