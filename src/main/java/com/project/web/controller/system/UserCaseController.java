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
import com.project.system.domain.UserCase;
import com.project.system.service.IUserCaseService;
import com.project.web.controller.common.BaseController;
import com.project.common.base.TableDataInfo;
import com.project.common.base.AjaxResult;

/**
 * 病例 信息操作处理
 *
 * @author administrator
 * @date 2020-04-05
 */
@Controller
@RequestMapping("/system/userCase" )
public class UserCaseController extends BaseController {
    private String prefix = "system/userCase" ;

    @Autowired
    private IUserCaseService userCaseService;

    @RequiresPermissions("system:userCase:view" )
    @GetMapping()
    public String userCase(ModelMap modelMap) {
        modelMap.put("userId",this.getUserId());
        return prefix + "/userCase" ;
    }

    /**
     * 查询病例列表
     */
    @PostMapping("/list" )
    @ResponseBody
    public TableDataInfo list(UserCase userCase) {
        startPage();
        List<UserCase> list = userCaseService.selectUserCaseList(userCase);
        return getDataTable(list);
    }

    /**
     * 新增病例
     */
    @GetMapping("/add" )
    public String add(Long userId,ModelMap modelMap) {
        modelMap.put("userId",userId);
        return prefix + "/add" ;
    }

    /**
     * 新增保存病例
     */
    @PostMapping("/add" )
    @ResponseBody
    public AjaxResult addSave(UserCase userCase) {
        userCase.setDoctorId(this.getUserId());
        return toAjax(userCaseService.insertUserCase(userCase));
    }

    /**
     * 查看病例
     */
    @GetMapping("/detail/{id}" )
    public String detail(@PathVariable("id" ) Long id, ModelMap mmap) {
        UserCase userCase =userCaseService.selectUserCaseById(id);
        mmap.put("userCase" , userCase);
        return prefix + "/detail" ;
    }

    /**
     * 修改病例
     */
    @GetMapping("/edit/{id}" )
    public String edit(@PathVariable("id" ) Long id, ModelMap mmap) {
        UserCase userCase =userCaseService.selectUserCaseById(id);
        mmap.put("userCase" , userCase);
        return prefix + "/edit" ;
    }

    /**
     * 修改保存病例
     */
    @PostMapping("/edit" )
    @ResponseBody
    public AjaxResult editSave(UserCase userCase) {
        return toAjax(userCaseService.updateUserCase(userCase));
    }

    /**
     * 删除病例
     */
    @PostMapping("/remove" )
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(userCaseService.deleteUserCaseByIds(ids));
    }

}
