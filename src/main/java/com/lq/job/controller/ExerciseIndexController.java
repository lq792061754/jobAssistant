package com.lq.job.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExerciseIndexController {
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
}
