package com.lq.job.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lq.job.service.CompanyMsgService;
import com.lq.job.service.ExerciseService;

@Controller
public class ViewIndexController {
    @Autowired
    private CompanyMsgService companyMsgService;
    @Autowired
    private ExerciseService exerciseService;
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
    @RequestMapping(value="showJpostManageIndex")
    public String showJpostManageIndex() {
        return "admin/JPostManage";
    }
    //后台显示试题内容初始化
    @RequestMapping(value="showExerciseIndex")
    public String showExerciseIndex(Model model, Integer et_id) {
        model.addAttribute("et_id", et_id);
        return "admin/showExercise";
    }
    @RequestMapping(value="uploadCompanyIndex")
    public String uploadCompanyIndex() {
        return "admin/uploadCompany";
    }
    @RequestMapping(value="CompanyManageIndex")
    public String companyManageIndex() {
        return "admin/CompanyManage";
    }
    @RequestMapping(value="modifyCompanyIndex")
    public String modifycompanyIndex(Integer id, Model model) {
        model.addAttribute("MSG", companyMsgService.getCompanyMsgById(id));
        return "admin/modifyCompany";
    }
    @RequestMapping(value="modifyExerciseIndex")
    public String modifyExercise(Integer eid, Model model) {
        model.addAttribute("EXERCISE", exerciseService.getOneExeById(eid));
        return "admin/modifyExercise";
    }
    @RequestMapping(value="uploadSkillIndex")
    public String uploadSkillIndex() {
        return "admin/uploadSkill";
    }
    @RequestMapping(value="SkillManageIndex")
    public String skillManageIndex() {
        return "admin/SkillManage";
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
    @RequestMapping(value="skill")
    public String showSkill() {
        return "user/skill";
    }
    @RequestMapping(value="school")
    public String showSchool() {
        return "user/school";
    }
    @RequestMapping(value="talk")
    public String showTalk() {
        return "user/talk";
    }
    @RequestMapping(value="talkdetail")
    public String showtallDetail(Integer post_id, Model model) {
        model.addAttribute("PID", post_id);
        return "user/talkdetail";
    }
    @RequestMapping(value="mydetail")
    public String showmyDetail(Integer post_id, Model model) {
        model.addAttribute("PID", post_id);
        return "user/mydetail";
    }
    @RequestMapping(value="mypost")
    public String mypost() {
        return "user/mood";
    }
    @RequestMapping(value="answerme")
    public String showAnswerme(Integer id, Model model) {
        model.addAttribute("ID", id);
        return "user/answerme";
    }
    @RequestMapping(value="showSkilldetailIndex")
    public String showSkilldetail(Integer sid, Model model) {
        model.addAttribute("ID", sid);
        return "user/skilldetail";
    }
    @RequestMapping(value="changeUserpwdIndex")
    public String changeUserpwd() {
        return "user/changeUserpwd";
    }
}
