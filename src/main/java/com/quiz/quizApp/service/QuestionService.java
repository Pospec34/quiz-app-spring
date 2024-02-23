package com.quiz.quizApp.service;

import com.quiz.quizApp.models.Question;
import com.quiz.quizApp.repository.QuestionRepository;
import lombok.AllArgsConstructor;

import java.util.List;

@AllArgsConstructor
public class QuestionService {

    private final QuestionRepository questionRepository;

    public List<Question> getAllQuestions(){
        return questionRepository.findAll();
    }
}
