package com.lq.job.service;

import java.util.List;

import com.lq.job.domain.Skill;

public interface SkillService {
    public Integer insertSkill(Skill skill);
    public Integer deleteSkillById(Integer id);
    public Integer updateSkillById(Integer id);
    public List<Skill> getAllSkill();
    public Skill getSkillById(Integer id);
}
