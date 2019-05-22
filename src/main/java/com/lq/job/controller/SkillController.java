package com.lq.job.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lq.job.domain.Skill;
import com.lq.job.service.SkillService;

@Controller
public class SkillController {
    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    @Autowired
    private SkillService skillService;
    @RequestMapping(value="insertSkill", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> insertSkill(Skill skill) {
        Map<String, Object> map = new HashMap<String, Object>();
        skill.setSkill_time(sdf.format(new Date()));
        int i = skillService.insertSkill(skill);
        if (i > 0) {
            map.put("type", 1);
        } else {
            map.put("type", 0);
        }
        return map;
    }
    @RequestMapping(value="showSkill")
    @ResponseBody
    public PageInfo<Skill> showSkill(@RequestParam(defaultValue="1")Integer page) {
        PageHelper.startPage(page, 5);//分页
        List<Skill> li = skillService.getAllSkill();
        PageInfo<Skill> list = new PageInfo<>(li);
        if (page > list.getPageNum())
            li.clear();
        return list;
    }
    @RequestMapping(value="showSkilldetail")
    @ResponseBody
    public Map<String, Skill> showSkilldetail(Integer id) {
        Map<String, Skill> map = new HashMap<String, Skill>();
        Skill s = skillService.getSkillById(id);
        map.put("Skill", s);
        return map;
    }
    @RequestMapping(value="deleteSkill")
    @ResponseBody
    public Map<String, Object> deleteSkill(Integer id) {
        Map<String, Object> map = new HashMap<String, Object>();
        int i = skillService.deleteSkillById(id);
        if (i > 0) {
            map.put("result", "success");
        } else {
            map.put("result", "failed");
        }
        return map;
    }
}
