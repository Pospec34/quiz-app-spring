package com.quiz.quizApp.controllers;

import com.quiz.quizApp.dto.QuestionDTO;
import com.quiz.quizApp.service.QuestionService;
import lombok.AllArgsConstructor;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
@RequestMapping(path = "api/questions")
public class QuestionController {

    private final QuestionService questionService;

    @GetMapping("/all")
    public List<QuestionDTO> getAllQuestions() {
        return questionService.getAllQuestions();
    }

    @GetMapping("/byCategory/{category}")
    public List<QuestionDTO> getQuestionsByCategory(@PathVariable String category) {
        return questionService.getQuestionsByCategory(category);
    }

    @GetMapping("/bySubCategoryId/{subCategoryId}")
    public List<QuestionDTO> getQuestionsBySubCategoryId(@PathVariable Long subCategoryId){
        return questionService.getQuestionsBySubcategoryId(subCategoryId);
    }

}
