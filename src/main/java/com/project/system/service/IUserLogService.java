package com.project.system.service;

import com.project.system.domain.UserLog;
import java.util.List;

/**
 * 日志模块 服务层
 * 
 * @author administrator
 * @date 2020-04-05
 */
public interface IUserLogService {
	/**
     * 查询日志模块信息
     * 
     * @param id 日志模块ID
     * @return 日志模块信息
     */
	public UserLog selectUserLogById(Long id);
	
	/**
     * 查询日志模块列表
     * 
     * @param userLog 日志模块信息
     * @return 日志模块集合
     */
	public List<UserLog> selectUserLogList(UserLog userLog);
	
	/**
     * 新增日志模块
     * 
     * @param userLog 日志模块信息
     * @return 结果
     */
	public int insertUserLog(UserLog userLog);
	
	/**
     * 修改日志模块
     * 
     * @param userLog 日志模块信息
     * @return 结果
     */
	public int updateUserLog(UserLog userLog);
		
	/**
     * 删除日志模块信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteUserLogByIds(String ids);
	
}
