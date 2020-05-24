package com.project.system.mapper;

import com.project.system.domain.UserHealthScore;
import java.util.List;	

/**
 * 用户评估 数据层
 * 
 * @author administrator
 * @date 2020-04-05
 */
public interface UserHealthScoreMapper {
	/**
     * 查询用户评估信息
     * 
     * @param id 用户评估ID
     * @return 用户评估信息
     */
	public UserHealthScore selectUserHealthScoreById(Long id);
	
	/**
     * 查询用户评估列表
     * 
     * @param userHealthScore 用户评估信息
     * @return 用户评估集合
     */
	public List<UserHealthScore> selectUserHealthScoreList(UserHealthScore userHealthScore);
	
	/**
     * 新增用户评估
     * 
     * @param userHealthScore 用户评估信息
     * @return 结果
     */
	public int insertUserHealthScore(UserHealthScore userHealthScore);
	
	/**
     * 修改用户评估
     * 
     * @param userHealthScore 用户评估信息
     * @return 结果
     */
	public int updateUserHealthScore(UserHealthScore userHealthScore);
	
	/**
     * 删除用户评估
     * 
     * @param id 用户评估ID
     * @return 结果
     */
	public int deleteUserHealthScoreById(Long id);
	
	/**
     * 批量删除用户评估
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteUserHealthScoreByIds(String[] ids);
	
}