package com.quiz.quizApp.service;

import com.quiz.quizApp.dto.QuestionDTO;
import com.quiz.quizApp.models.Answer;
import com.quiz.quizApp.models.Question;
import com.quiz.quizApp.repository.QuestionRepository;
import lombok.AllArgsConstructor;

import java.util.ArrayList;
import java.util.List;


@AllArgsConstructor
public class QuestionService {

    private final QuestionRepository questionRepository;

    public List<QuestionDTO> getAllQuestions() {
        List<Question> questions = questionRepository.findAll();
        List<QuestionDTO> questionDTOs = new ArrayList<>();
        for (Question question : questions) {
            questionDTOs.add(convertToDTO(question));
        }
        return questionDTOs;
    }

    public List<QuestionDTO> getQuestionsByCategory(String category) {
        List<Question> questions = questionRepository.findAllBySubcategory_Category_NameIgnoreCase(category);
        List<QuestionDTO> questionDTOS = new ArrayList<>();
        for (Question question : questions) {
            questionDTOS.add(convertToDTO(question));
        }
        return questionDTOS;
    }

    public List<QuestionDTO> getQuestionsBySubcategoryId(Long subCategoryId) {
        List<Question> questions = questionRepository.findAllBySubcategoryId(subCategoryId);
        List<QuestionDTO> questionDTOS = new ArrayList<>();

        for (Question question : questions) {
            questionDTOS.add(convertToDTO(question));
        }
        return questionDTOS;
    }

    public List<QuestionDTO> getQuestionsBySubcategoryName(String name) {
        List<Question> questions = questionRepository.findAllQuestionsBySubcategoryName(name);
        List<QuestionDTO> questionDTOS = new ArrayList<>();

        for (Question question : questions) {
            questionDTOS.add(convertToDTO(question));
        }
        return questionDTOS;
    }

    private QuestionDTO convertToDTO(Question question) {
        QuestionDTO dto = new QuestionDTO();
        dto.setQuestionID(question.getId());
        dto.setCategory(question.getSubcategory().getCategory().getName());
        dto.setSubcategory(question.getSubcategory().getName());
        dto.setQuestion(question.getText());

        List<String> wrongAnswers = new ArrayList<>();
        String correctAnswer = null;
        for (Answer answer : question.getAnswers()) {
            if (answer.isCorrect()) {
                correctAnswer = answer.getText();
            } else {
                wrongAnswers.add(answer.getText());
            }
        }

        dto.setCorrectAnswer(correctAnswer);
        dto.setWrongAnswers(wrongAnswers);
        return dto;
    }
}