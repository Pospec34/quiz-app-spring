package com.quiz.quizApp.dto;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class QuestionDTO {
    private Long questionID;
    private String category;
    private String subcategory;
    private String text;
    private String correctAnswer;
    private List<String> wrongAnswers;

}


