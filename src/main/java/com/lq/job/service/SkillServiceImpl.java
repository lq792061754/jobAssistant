package com.lq.job.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lq.job.dao.SkillMapper;
import com.lq.job.domain.Skill;
@Service
public class SkillServiceImpl implements SkillService {
    @Autowired
    private SkillMapper skillMapper;
    @Override
    public Integer insertSkill(Skill skill) {
        // TODO Auto-generated method stub
        return skillMapper.insertSkill(skill);
    }

    @Override
    public Integer deleteSkillById(Integer id) {
        // TODO Auto-generated method stub
        return skillMapper.deleteSkillById(id);
    }

    @Override
    public Integer updateSkillById(Integer id) {
        // TODO Auto-generated method stub
        return skillMapper.updateSkillById(id);
    }

    @Override
    public List<Skill> getAllSkill() {
        // TODO Auto-generated method stub
        return skillMapper.getAllSkill();
    }

    @Override
    public Skill getSkillById(Integer id) {
        // TODO Auto-generated method stub
        return skillMapper.getSkillById(id);
    }

}
