package com.project.system.mapper;

import com.project.system.domain.UserAppint;
import java.util.List;	

/**
 * 预约 数据层
 * 
 * @author administrator
 * @date 2020-04-05
 */
public interface UserAppintMapper {
	/**
     * 查询预约信息
     * 
     * @param id 预约ID
     * @return 预约信息
     */
	public UserAppint selectUserAppintById(Long id);
	
	/**
     * 查询预约列表
     * 
     * @param userAppint 预约信息
     * @return 预约集合
     */
	public List<UserAppint> selectUserAppintList(UserAppint userAppint);
	
	/**
     * 新增预约
     * 
     * @param userAppint 预约信息
     * @return 结果
     */
	public int insertUserAppint(UserAppint userAppint);
	
	/**
     * 修改预约
     * 
     * @param userAppint 预约信息
     * @return 结果
     */
	public int updateUserAppint(UserAppint userAppint);
	
	/**
     * 删除预约
     * 
     * @param id 预约ID
     * @return 结果
     */
	public int deleteUserAppintById(Long id);
	
	/**
     * 批量删除预约
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteUserAppintByIds(String[] ids);
	
}