package com.project.system.service;

import com.project.system.domain.UserCase;
import java.util.List;

/**
 * 病例 服务层
 * 
 * @author administrator
 * @date 2020-04-05
 */
public interface IUserCaseService {
	/**
     * 查询病例信息
     * 
     * @param id 病例ID
     * @return 病例信息
     */
	public UserCase selectUserCaseById(Long id);
	
	/**
     * 查询病例列表
     * 
     * @param userCase 病例信息
     * @return 病例集合
     */
	public List<UserCase> selectUserCaseList(UserCase userCase);
	
	/**
     * 新增病例
     * 
     * @param userCase 病例信息
     * @return 结果
     */
	public int insertUserCase(UserCase userCase);
	
	/**
     * 修改病例
     * 
     * @param userCase 病例信息
     * @return 结果
     */
	public int updateUserCase(UserCase userCase);
		
	/**
     * 删除病例信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteUserCaseByIds(String ids);
	
}
