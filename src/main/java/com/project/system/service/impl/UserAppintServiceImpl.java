package com.project.system.service.impl;

import java.util.List;

import com.project.common.utils.TimeUuidUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.system.mapper.UserAppintMapper;
import com.project.system.domain.UserAppint;
import com.project.system.service.IUserAppintService;
import com.project.common.utils.str.Convert;

/**
 * 预约 服务层实现
 *
 * @author administrator
 * @date 2020-04-05
 */
@Service
public class UserAppintServiceImpl implements IUserAppintService {
    @Autowired
    private UserAppintMapper userAppintMapper;

    /**
     * 查询预约信息
     *
     * @param id 预约ID
     * @return 预约信息
     */
    @Override
    public UserAppint selectUserAppintById(Long id) {
        return userAppintMapper.selectUserAppintById(id);
    }

    /**
     * 查询预约列表
     *
     * @param userAppint 预约信息
     * @return 预约集合
     */
    @Override
    public List<UserAppint> selectUserAppintList(UserAppint userAppint) {
        return userAppintMapper.selectUserAppintList(userAppint);
    }

    /**
     * 新增预约
     *
     * @param userAppint 预约信息
     * @return 结果
     */
    @Override
    public int insertUserAppint(UserAppint userAppint) {
        userAppint.setId(TimeUuidUtil.get16UUID());
        return userAppintMapper.insertUserAppint(userAppint);
    }

    /**
     * 修改预约
     *
     * @param userAppint 预约信息
     * @return 结果
     */
    @Override
    public int updateUserAppint(UserAppint userAppint) {
        return userAppintMapper.updateUserAppint(userAppint);
    }

    /**
     * 删除预约对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteUserAppintByIds(String ids) {
        return userAppintMapper.deleteUserAppintByIds(Convert.toStrArray(ids));
    }

}
