package com.quiz.quizApp.service;

import com.quiz.quizApp.dto.QuestionDTO;
import com.quiz.quizApp.models.Answer;
import com.quiz.quizApp.models.Question;
import com.quiz.quizApp.repository.QuestionRepository;
import lombok.AllArgsConstructor;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@AllArgsConstructor
public class QuestionService {

    private final QuestionRepository questionRepository;


    public List<QuestionDTO> getAllQuestions(){
        List<Question> questions = questionRepository.findAll();
        List<QuestionDTO> questionDTOs = new ArrayList<>();
        for (Question question : questions){
            questionDTOs.add(convertToDTO(question));
        }
        return questionDTOs;
    }

    private QuestionDTO convertToDTO(Question question) {
        QuestionDTO dto = new QuestionDTO();
        dto.setCategory(question.getSubcategory().getCategory().getName());
        dto.setSubcategory(question.getSubcategory().getName());
        dto.setQuestion(question.getText());
        dto.setCorrectAnswer(question.getAnswers().stream().filter(Answer::isCorrect).findFirst().map(Answer::getText).orElse(null));
        dto.setWrongAnswers(question.getAnswers().stream().filter(answer -> !answer.isCorrect()).map(Answer::getText).collect(Collectors.toList()));

        return dto;
    }
}