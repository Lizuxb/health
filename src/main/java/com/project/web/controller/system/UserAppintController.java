package com.project.web.controller.system;

import java.util.List;

import com.project.system.service.ISysUserService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.project.system.domain.UserAppint;
import com.project.system.service.IUserAppintService;
import com.project.web.controller.common.BaseController;
import com.project.common.base.TableDataInfo;
import com.project.common.base.AjaxResult;

/**
 * 预约 信息操作处理
 *
 * @author administrator
 * @date 2020-04-05
 */
@Controller
@RequestMapping("/system/userAppint" )
public class UserAppintController extends BaseController {
    private String prefix = "system/userAppint" ;

    @Autowired
    private IUserAppintService userAppintService;
    @Autowired
    private ISysUserService userService;


    @RequiresPermissions("system:userAppint:doctor" )
    @GetMapping("/doctor")
    public String userAppintDoctor() {
        return prefix + "/userAppintDoctor" ;
    }

    @RequiresPermissions("system:userAppint:view" )
    @GetMapping()
    public String userAppint() {
        return prefix + "/userAppint" ;
    }

    @GetMapping("/userInfo")
    public String userInfo(Long userId,ModelMap modelMap) {
        modelMap.put("userId",userId);
        return prefix + "/userInfo" ;
    }
    /**
     * 查询预约列表
     */
    @RequiresPermissions("system:userAppint:list" )
    @PostMapping("/list" )
    @ResponseBody
    public TableDataInfo list(UserAppint userAppint) {
        if(!this.getUser().isSuperAdmin()){
            userAppint.setUserId(this.getUserId());
        }
        startPage();
        List<UserAppint> list = userAppintService.selectUserAppintList(userAppint);
        return getDataTable(list);
    }
    @PostMapping("/listForDoctor" )
    @ResponseBody
    public TableDataInfo listForDoctor(UserAppint userAppint) {
        if(!this.getUser().isSuperAdmin()){
            userAppint.setDoctorId(this.getUserId());
        }
        startPage();
        List<UserAppint> list = userAppintService.selectUserAppintList(userAppint);
        return getDataTable(list);
    }

    /**
     * 新增预约
     */
    @GetMapping("/add" )
    public String add(Long doctorId,ModelMap modelMap) {
        modelMap.put("doctorName",userService.selectUserById(doctorId).getUserName());
        modelMap.put("doctorId",doctorId);
        return prefix + "/add" ;
    }

    /**
     * 新增保存预约
     */
    @RequiresPermissions("system:userAppint:add" )
    @PostMapping("/add" )
    @ResponseBody
    public AjaxResult addSave(UserAppint userAppint) {
        userAppint.setUserId(this.getUserId());
        return toAjax(userAppintService.insertUserAppint(userAppint));
    }

    /**
     * 查看预约
     */
    @GetMapping("/detail/{id}" )
    public String detail(@PathVariable("id" ) Long id, ModelMap mmap) {
        UserAppint userAppint =userAppintService.selectUserAppintById(id);
        mmap.put("userAppint" , userAppint);
        return prefix + "/detail" ;
    }

    /**
     * 修改预约
     */
    @GetMapping("/edit/{id}" )
    public String edit(@PathVariable("id" ) Long id, ModelMap mmap) {
        UserAppint userAppint =userAppintService.selectUserAppintById(id);
        mmap.put("userAppint" , userAppint);
        return prefix + "/edit" ;
    }

    /**
     * 修改保存预约
     */
    @PostMapping("/edit" )
    @ResponseBody
    public AjaxResult editSave(UserAppint userAppint) {
        return toAjax(userAppintService.updateUserAppint(userAppint));
    }

    /**
     * 删除预约
     */
    @RequiresPermissions("system:userAppint:remove" )
    @PostMapping("/remove" )
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(userAppintService.deleteUserAppintByIds(ids));
    }

}
