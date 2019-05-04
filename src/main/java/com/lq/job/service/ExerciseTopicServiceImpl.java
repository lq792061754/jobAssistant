package com.lq.job.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lq.job.dao.ExerciseTopicMapper;
import com.lq.job.domain.ExerciseTopic;
@Service
public class ExerciseTopicServiceImpl implements ExerciseTopicService {
    @Autowired
    private ExerciseTopicMapper etm;

    @Override
    public int insertExetopic(ExerciseTopic exerciseTopic) {
        // TODO Auto-generated method stub
        return etm.insertExetopic(exerciseTopic);
    }

    @Override
    public List<ExerciseTopic> showExeTopic() {
        // TODO Auto-generated method stub
        return etm.showExeTopic();
    }

    @Override
    public int deleteExetopicById(Integer id) {
        // TODO Auto-generated method stub
        return etm.deleteExetopicById(id);
    }

    @Override
    public Integer addHeat(Integer id) {
        // TODO Auto-generated method stub
        return etm.addHeat(id);
    }

}
