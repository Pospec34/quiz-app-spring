package com.quiz.quizApp.config;

import com.quiz.quizApp.repository.QuestionRepository;
import com.quiz.quizApp.service.QuestionService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig{
    @Bean
    public QuestionService questionService(QuestionRepository questionRepository){
        return new QuestionService(questionRepository);
    }
}