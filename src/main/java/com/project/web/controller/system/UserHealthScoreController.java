package com.project.web.controller.system;

import java.util.List;

import com.project.system.domain.UserAppint;
import com.project.system.service.IUserAppintService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.hibernate.validator.constraints.SafeHtml;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.project.system.domain.UserHealthScore;
import com.project.system.service.IUserHealthScoreService;
import com.project.web.controller.common.BaseController;
import com.project.common.base.TableDataInfo;
import com.project.common.base.AjaxResult;

/**
 * 用户评估 信息操作处理
 *
 * @author administrator
 * @date 2020-04-05
 */
@Controller
@RequestMapping("/system/userHealthScore" )
public class UserHealthScoreController extends BaseController {
    private String prefix = "system/userHealthScore" ;

    @Autowired
    private IUserHealthScoreService userHealthScoreService;

    @Autowired
    private IUserAppintService appintService;

    @RequiresPermissions("system:userHealthScore:view" )
    @GetMapping()
    public String userHealthScore() {
        return prefix + "/userHealthScore" ;
    }

    /**
     * 查询用户评估列表
     */
    @PostMapping("/list" )
    @ResponseBody
    public TableDataInfo list(UserHealthScore userHealthScore) {
        if(!this.getUser().isSuperAdmin()){
            userHealthScore.setUserId(this.getUserId());
        }
        startPage();
        List<UserHealthScore> list = userHealthScoreService.selectUserHealthScoreList(userHealthScore);
        return getDataTable(list);
    }

    /**
     * 新增用户评估
     */
    @GetMapping("/add" )
    public String add(Long id,ModelMap modelMap) {
        modelMap.put("appointId",id);
        return prefix + "/add" ;
    }

    /**
     * 新增保存用户评估
     */
    @PostMapping("/add" )
    @ResponseBody
    @Transactional
    public AjaxResult addSave(UserHealthScore userHealthScore,Long appointId) {
        UserAppint appint = appintService.selectUserAppintById(appointId);
        appint.setStatus(2);
        appintService.updateUserAppint(appint);
        userHealthScore.setUserId(appint.getUserId());
        userHealthScore.setDoctor(this.getUserId());
        return toAjax(userHealthScoreService.insertUserHealthScore(userHealthScore));
    }

    /**
     * 查看用户评估
     */
    @GetMapping("/detail/{id}" )
    public String detail(@PathVariable("id" ) Long id, ModelMap mmap) {
        UserHealthScore userHealthScore =userHealthScoreService.selectUserHealthScoreById(id);
        mmap.put("userHealthScore" , userHealthScore);
        return prefix + "/detail" ;
    }

    /**
     * 修改用户评估
     */
    @GetMapping("/edit/{id}" )
    public String edit(@PathVariable("id" ) Long id, ModelMap mmap) {
        UserHealthScore userHealthScore =userHealthScoreService.selectUserHealthScoreById(id);
        mmap.put("userHealthScore" , userHealthScore);
        return prefix + "/edit" ;
    }

    /**
     * 修改保存用户评估
     */
    @PostMapping("/edit" )
    @ResponseBody
    public AjaxResult editSave(UserHealthScore userHealthScore) {
        return toAjax(userHealthScoreService.updateUserHealthScore(userHealthScore));
    }

    /**
     * 删除用户评估
     */
    @PostMapping("/remove" )
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(userHealthScoreService.deleteUserHealthScoreByIds(ids));
    }


    @RequiresPermissions("system:userHealthScore:statistics" )
    @GetMapping("/statistics")
    public String statistics() {
        return prefix + "/statistics" ;
    }

    @PostMapping("/statistics")
    @ResponseBody
    public List<UserHealthScore> statistics(UserHealthScore score) {
        score.setUserId(this.getUserId());
        return userHealthScoreService.selectUserHealthScoreList(score);
    }
}
