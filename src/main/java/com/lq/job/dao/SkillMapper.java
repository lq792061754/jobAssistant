package com.lq.job.dao;

import java.util.List;

import com.lq.job.domain.Skill;

public interface SkillMapper {
    public Integer insertSkill(Skill skill);
    public Integer deleteSkillById(Integer id);
    public Integer updateSkillById(Integer id);
    public List<Skill> getAllSkill();
    public Skill getSkillById(Integer id);
}
