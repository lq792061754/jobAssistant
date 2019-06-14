package com.lq.job.service;

import java.util.List;

import com.lq.job.domain.Exercise;
import com.lq.job.domain.Exercisevo;

public interface ExerciseService {
    public Integer insertExercise(Exercise exercise);
    public List<Exercisevo> showExercises(Integer id);
    public Integer deleteExeById(Integer id);
    public Integer deleteAllByEt_id(Integer id);
    public Exercise getOneExeById(Integer id);
    public Integer updateExerciseById(Exercise exercise);
}
