package com.project.system.service.impl;

import java.util.List;

import com.project.common.utils.TimeUuidUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.system.mapper.UserLogMapper;
import com.project.system.domain.UserLog;
import com.project.system.service.IUserLogService;
import com.project.common.utils.str.Convert;

/**
 * 日志模块 服务层实现
 *
 * @author administrator
 * @date 2020-04-05
 */
@Service
public class UserLogServiceImpl implements IUserLogService {
    @Autowired
    private UserLogMapper userLogMapper;

    /**
     * 查询日志模块信息
     *
     * @param id 日志模块ID
     * @return 日志模块信息
     */
    @Override
    public UserLog selectUserLogById(Long id) {
        return userLogMapper.selectUserLogById(id);
    }

    /**
     * 查询日志模块列表
     *
     * @param userLog 日志模块信息
     * @return 日志模块集合
     */
    @Override
    public List<UserLog> selectUserLogList(UserLog userLog) {
        return userLogMapper.selectUserLogList(userLog);
    }

    /**
     * 新增日志模块
     *
     * @param userLog 日志模块信息
     * @return 结果
     */
    @Override
    public int insertUserLog(UserLog userLog) {
        userLog.setId(TimeUuidUtil.get16UUID());
        return userLogMapper.insertUserLog(userLog);
    }

    /**
     * 修改日志模块
     *
     * @param userLog 日志模块信息
     * @return 结果
     */
    @Override
    public int updateUserLog(UserLog userLog) {
        return userLogMapper.updateUserLog(userLog);
    }

    /**
     * 删除日志模块对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteUserLogByIds(String ids) {
        return userLogMapper.deleteUserLogByIds(Convert.toStrArray(ids));
    }

}
