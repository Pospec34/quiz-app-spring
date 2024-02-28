package com.quiz.quizApp.config;

import com.quiz.quizApp.quizLogic.Quiz;
import com.quiz.quizApp.quizLogic.ScoreEvaluator;
import com.quiz.quizApp.quizSelectors.CategorySelector;
import com.quiz.quizApp.quizSelectors.SubCategorySelector;
import com.quiz.quizApp.repository.CategoryRepository;
import com.quiz.quizApp.repository.QuestionRepository;
import com.quiz.quizApp.repository.SubcategoryRepository;
import com.quiz.quizApp.service.CategoryService;
import com.quiz.quizApp.service.QuestionService;
import com.quiz.quizApp.service.SubcategoryService;
import com.quiz.quizApp.ui.QuizUI;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


@Configuration
public class AppConfig{

    @Bean
    public QuestionService questionService(QuestionRepository questionRepository){
        return new QuestionService(questionRepository);
    }

    @Bean
    public CategoryService categoryService(CategoryRepository categoryRepository){
        return new CategoryService(categoryRepository);
    }

    @Bean
    public SubcategoryService subcategoryService(SubcategoryRepository subcategoryRepository){
        return new SubcategoryService(subcategoryRepository);
    }

    @Bean
    public CategorySelector categorySelector(CategoryService categoryService, SubCategorySelector subCategorySelector){
        return new CategorySelector(categoryService, subCategorySelector);
    }

    @Bean
    public ScoreEvaluator scoreEvaluator(){
        return new ScoreEvaluator();
    }

    @Bean
    public Quiz quiz(QuestionService questionService, ScoreEvaluator scoreEvaluator){
        return new Quiz(questionService, scoreEvaluator);
    }

    @Bean
    public SubCategorySelector subCategorySelector(SubcategoryService subCategoryService, Quiz quiz){
        return new SubCategorySelector(subCategoryService, quiz);
    }

    @Bean
    public QuizUI quizUI(CategorySelector categorySelector){
        return new QuizUI(categorySelector);
    }

}