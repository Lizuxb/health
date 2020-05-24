package com.project.web.controller.system;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.project.system.domain.UserLog;
import com.project.system.service.IUserLogService;
import com.project.web.controller.common.BaseController;
import com.project.common.base.TableDataInfo;
import com.project.common.base.AjaxResult;

/**
 * 日志模块 信息操作处理
 *
 * @author administrator
 * @date 2020-04-05
 */
@Controller
@RequestMapping("/system/userLog" )
public class UserLogController extends BaseController {
    private String prefix = "system/userLog" ;

    @Autowired
    private IUserLogService userLogService;

    @RequiresPermissions("system:userLog:view" )
    @GetMapping()
    public String userLog(ModelMap modelMap) {
        modelMap.put("userId",this.getUserId());
        return prefix + "/userLog" ;
    }

    /**
     * 查询日志模块列表
     */
    @PostMapping("/list" )
    @ResponseBody
    public TableDataInfo list(UserLog userLog) {
        startPage();
        List<UserLog> list = userLogService.selectUserLogList(userLog);
        return getDataTable(list);
    }

    /**
     * 新增日志模块
     */
    @GetMapping("/add" )
    public String add() {
        return prefix + "/add" ;
    }

    /**
     * 新增保存日志模块
     */
    @RequiresPermissions("system:userLog:add" )
    @PostMapping("/add" )
    @ResponseBody
    public AjaxResult addSave(UserLog userLog) {
        userLog.setUserId(this.getUserId());
        return toAjax(userLogService.insertUserLog(userLog));
    }

    /**
     * 查看日志模块
     */
    @GetMapping("/detail/{id}" )
    public String detail(@PathVariable("id" ) Long id, ModelMap mmap) {
        UserLog userLog =userLogService.selectUserLogById(id);
        mmap.put("userLog" , userLog);
        return prefix + "/detail" ;
    }

    /**
     * 修改日志模块
     */
    @GetMapping("/edit/{id}" )
    public String edit(@PathVariable("id" ) Long id, ModelMap mmap) {
        UserLog userLog =userLogService.selectUserLogById(id);
        mmap.put("userLog" , userLog);
        return prefix + "/edit" ;
    }

    /**
     * 修改保存日志模块
     */
    @RequiresPermissions("system:userLog:edit" )
    @PostMapping("/edit" )
    @ResponseBody
    public AjaxResult editSave(UserLog userLog) {
        return toAjax(userLogService.updateUserLog(userLog));
    }

    /**
     * 删除日志模块
     */
    @RequiresPermissions("system:userLog:remove" )
    @PostMapping("/remove" )
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(userLogService.deleteUserLogByIds(ids));
    }

}
