package com.quiz.quizApp.dto;


import com.quiz.quizApp.models.Question;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class QuestionDTO {
    private String category;
    private String subcategory;
    private String question;
    private String correctAnswer;
    private String wrongAnswer1;
    private String wrongAnswer2;


}


