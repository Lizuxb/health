package com.project.system.service.impl;

import java.util.List;

import com.project.common.utils.TimeUuidUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.system.mapper.UserCaseMapper;
import com.project.system.domain.UserCase;
import com.project.system.service.IUserCaseService;
import com.project.common.utils.str.Convert;

/**
 * 病例 服务层实现
 *
 * @author administrator
 * @date 2020-04-05
 */
@Service
public class UserCaseServiceImpl implements IUserCaseService {
    @Autowired
    private UserCaseMapper userCaseMapper;

    /**
     * 查询病例信息
     *
     * @param id 病例ID
     * @return 病例信息
     */
    @Override
    public UserCase selectUserCaseById(Long id) {
        return userCaseMapper.selectUserCaseById(id);
    }

    /**
     * 查询病例列表
     *
     * @param userCase 病例信息
     * @return 病例集合
     */
    @Override
    public List<UserCase> selectUserCaseList(UserCase userCase) {
        return userCaseMapper.selectUserCaseList(userCase);
    }

    /**
     * 新增病例
     *
     * @param userCase 病例信息
     * @return 结果
     */
    @Override
    public int insertUserCase(UserCase userCase) {
        userCase.setId(TimeUuidUtil.get16UUID());
        return userCaseMapper.insertUserCase(userCase);
    }

    /**
     * 修改病例
     *
     * @param userCase 病例信息
     * @return 结果
     */
    @Override
    public int updateUserCase(UserCase userCase) {
        return userCaseMapper.updateUserCase(userCase);
    }

    /**
     * 删除病例对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteUserCaseByIds(String ids) {
        return userCaseMapper.deleteUserCaseByIds(Convert.toStrArray(ids));
    }

}
