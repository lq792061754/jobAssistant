package com.lq.job.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lq.job.dao.ExerciseMapper;
import com.lq.job.domain.Exercise;
import com.lq.job.domain.Exercisevo;

@Service
public class ExerciseServiceImpl implements ExerciseService{
    @Autowired
    private ExerciseMapper exeMapper;

    @Override
    public Integer insertExercise(Exercise exercise) {
      return exeMapper.insertExercise(exercise);
    }

    @Override
    public List<Exercisevo> showExercises(Integer id) {
        // TODO Auto-generated method stub
        return exeMapper.showExercises(id);
    }

    @Override
    public Integer deleteExeById(Integer id) {
        // TODO Auto-generated method stub
        return exeMapper.deleteExeById(id);
    }

    @Override
    public Integer deleteAllByEt_id(Integer id) {
        // TODO Auto-generated method stub
        return exeMapper.deleteAllByEt_id(id);
    }

    @Override
    public Exercise getOneExeById(Integer id) {
        // TODO Auto-generated method stub
        return exeMapper.getOneExeById(id);
    }

    @Override
    public Integer updateExerciseById(Exercise exercise) {
        // TODO Auto-generated method stub
        return exeMapper.updateExerciseById(exercise);
    }

}
