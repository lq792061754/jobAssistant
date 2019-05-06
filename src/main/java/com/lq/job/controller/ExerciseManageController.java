package com.lq.job.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lq.job.domain.ExerciseTopic;
import com.lq.job.domain.Exercisevo;
import com.lq.job.service.ExerciseService;
import com.lq.job.service.ExerciseTopicService;

@Controller
public class ExerciseManageController {
    @Autowired
    private ExerciseTopicService ets;
    @Autowired
    private ExerciseService es;
    //显示试题
    @RequestMapping(value="showExeTopic")
    @ResponseBody
    public PageInfo<ExerciseTopic> showExeTopic(@RequestParam(defaultValue="1")Integer page) {
        PageHelper.startPage(page, 5);//分页
        PageInfo<ExerciseTopic> list = new PageInfo<>(ets.showExeTopic());
        return list;
    }
    //后台显示试题内容
    @RequestMapping(value="showExercises")
    @ResponseBody
    public PageInfo<Exercisevo> showExercises(@RequestParam(defaultValue="1")Integer page, Integer id) {
        PageHelper.startPage(page, 5);//分页
        PageInfo<Exercisevo> list = new PageInfo<>(es.showExercises(id));
        return list;
    }
    //前台显示试题内容
    @RequestMapping(value="showUserExercise")
    @ResponseBody
    public List<Exercisevo> showUserExercise(Integer id) {
        List<Exercisevo> list = es.showExercises(id);
        for (int i = 0; i < list.size(); i++)
            list.get(i).setExercise_answer(null);//清空正确答案
        return list;
    }
    //删除试题
    @RequestMapping(value="deleteExeTopic")
    @ResponseBody
    public Map<String,Object> delExeTopic(Integer et_id) {
        int i = ets.deleteExetopicById(et_id);
        int j = es.deleteAllByEt_id(et_id);
        Map<String,Object> resultMap = new HashMap<String, Object>();
        if (i > 0 && j >= 0) {
            resultMap.put("type", "success");
        }else{
            resultMap.put("type", "fail");
        }
        return resultMap;
    }
    //删除试题内容
    @RequestMapping(value="deleteExercise")
    @ResponseBody
    public Map<String,Object> delExercise(Integer exercise_id) {//传参必须与ajax中的名字一样
        int i = es.deleteExeById(exercise_id);
        Map<String,Object> resultMap = new HashMap<String, Object>();
        if (i==1) {
            resultMap.put("type", "success");
        }else{
            resultMap.put("type", "fail");
        }
        return resultMap;
    }
    @RequestMapping(value="checkAnswer")
    @ResponseBody
    public Map<String, Object> checkAnswer(Integer id) {
        ets.addHeat(id);
        List<Exercisevo> list = es.showExercises(id);
        Map<String, Object> answerMap = new HashMap<String, Object>();
        for(int i = 0; i < list.size(); i++) {
            String s = "no answer";
            if (list.get(i).getChoice1().equals(list.get(i).getExercise_answer()))
                s = "A";
            if (list.get(i).getChoice2().equals(list.get(i).getExercise_answer()))
                s = "B";
            if (list.get(i).getChoice3().equals(list.get(i).getExercise_answer()))
                s = "C";
            if (list.get(i).getChoice4().equals(list.get(i).getExercise_answer()))
                s = "D";
            answerMap.put("answer"+i, s);
        }
        return answerMap;
    }
}
