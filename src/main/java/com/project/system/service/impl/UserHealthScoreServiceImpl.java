package com.project.system.service.impl;

import java.util.List;

import com.project.common.utils.TimeUuidUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.system.mapper.UserHealthScoreMapper;
import com.project.system.domain.UserHealthScore;
import com.project.system.service.IUserHealthScoreService;
import com.project.common.utils.str.Convert;

/**
 * 用户评估 服务层实现
 *
 * @author administrator
 * @date 2020-04-05
 */
@Service
public class UserHealthScoreServiceImpl implements IUserHealthScoreService {
    @Autowired
    private UserHealthScoreMapper userHealthScoreMapper;

    /**
     * 查询用户评估信息
     *
     * @param id 用户评估ID
     * @return 用户评估信息
     */
    @Override
    public UserHealthScore selectUserHealthScoreById(Long id) {
        return userHealthScoreMapper.selectUserHealthScoreById(id);
    }

    /**
     * 查询用户评估列表
     *
     * @param userHealthScore 用户评估信息
     * @return 用户评估集合
     */
    @Override
    public List<UserHealthScore> selectUserHealthScoreList(UserHealthScore userHealthScore) {
        return userHealthScoreMapper.selectUserHealthScoreList(userHealthScore);
    }

    /**
     * 新增用户评估
     *
     * @param userHealthScore 用户评估信息
     * @return 结果
     */
    @Override
    public int insertUserHealthScore(UserHealthScore userHealthScore) {
        userHealthScore.setId(TimeUuidUtil.get16UUID());
        return userHealthScoreMapper.insertUserHealthScore(userHealthScore);
    }

    /**
     * 修改用户评估
     *
     * @param userHealthScore 用户评估信息
     * @return 结果
     */
    @Override
    public int updateUserHealthScore(UserHealthScore userHealthScore) {
        return userHealthScoreMapper.updateUserHealthScore(userHealthScore);
    }

    /**
     * 删除用户评估对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteUserHealthScoreByIds(String ids) {
        return userHealthScoreMapper.deleteUserHealthScoreByIds(Convert.toStrArray(ids));
    }

}
