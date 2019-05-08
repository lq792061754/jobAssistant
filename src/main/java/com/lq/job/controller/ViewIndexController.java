package com.lq.job.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewIndexController {
//Admin
    @RequestMapping(value="admin")
    public String startPage() {
        return "redirect:login.html";
    }
    @RequestMapping(value="changePwdIndex")
    public String changePwdIndex() {
        return "admin/changepwd";
    }
    @RequestMapping(value="home")
    public String mainPage() {
        return "admin/right";
    }
    @RequestMapping(value="top")
    public String topPage() {
        return "admin/admin_top";
    }
    @RequestMapping(value="left")
    public String leftPage() {
        return "admin/admin_left";
    }
    @RequestMapping(value="right")
    public String rightPage() {
        return "admin/right";
    }
    @RequestMapping(value="userManage")
    public String showUserIndex() {
        return "admin/showUser";
    }
  //后台加载试题页面初始化
    @RequestMapping(value="uploadIndex")
    public String uploadPage() {
        return "admin/uploadExercise";
    }
    //后台显示试题初始化
    @RequestMapping(value="showExeIndex")
    public String showExeTopicIndex() {
        return "admin/showExeTopic";
    }
    //后台显示试题内容初始化
    @RequestMapping(value="showExerciseIndex")
    public String showExerciseIndex(Model model, Integer et_id) {
        model.addAttribute("et_id", et_id);
        return "admin/showExercise";
    }
//User
    @RequestMapping(value="/")
    public String indexPage() {
        return "user/index";
    }
    @RequestMapping(value="userExercise")
    public String showUserExercise() {
        return "user/showUserExercise";
    }
    @RequestMapping(value="doExercise")
    public String doExercise(Integer id, Model model) {
        model.addAttribute("ID", id);
        return "user/doExercise";
    }
    @RequestMapping(value="about")
    public String aboutUs() {
        return "user/about";
    }
    @RequestMapping(value="skill")
    public String showSkill() {
        return "user/skill";
    }
    @RequestMapping(value="school")
    public String showSchool() {
        return "user/school";
    }
}