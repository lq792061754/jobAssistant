package com.lq.job.dao;

import java.util.List;

import com.lq.job.domain.ExerciseTopic;

public interface ExerciseTopicMapper {
    public int insertExetopic(ExerciseTopic exerciseTopic);
    public List<ExerciseTopic> showExeTopic();
    public int deleteExetopicById(Integer id);
    public Integer addHeat(Integer id);
    public List<ExerciseTopic> showExeTopicByKind(String kind);
    public List<ExerciseTopic> showExeTopicByName(String name);
}
