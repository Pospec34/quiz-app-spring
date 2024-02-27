package com.quiz.quizApp.quizLogic;

import com.quiz.quizApp.dto.QuestionDTO;
import com.quiz.quizApp.service.QuestionService;
import lombok.AllArgsConstructor;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

@AllArgsConstructor
public class Quiz {
    private final QuestionService questionService;

    public void startQuiz(String subcategoryName){
        Scanner scanner = new Scanner(System.in);
        List<QuestionDTO> questions = questionService.getQuestionsBySubcategoryName(subcategoryName);
        Collections.shuffle(questions);


        int correctAnswers = 0;
        int questionNumber = 1;


        for (QuestionDTO question : questions){
            List<String> answers = new ArrayList<>(question.getWrongAnswers());
            answers.add(question.getCorrectAnswer());

            Collections.shuffle(answers);

            int correctAnswerIndex = answers.indexOf(question.getCorrectAnswer()) + 1;

            System.out.println("Question " + questionNumber++ + ": " + question.getText());
            for (int i = 0; i < answers.size(); i++){
                System.out.println((i + 1) + ". " + answers.get(i));
            }

            int userChoice = scanner.nextInt();

            if (correctAnswerIndex == (userChoice)){
                correctAnswers++;
                System.out.println("Correct!\n");
            } else {
                System.out.println("Wrong! The correct answer is: " + question.getCorrectAnswer() + "\n");
            }

        }
        System.out.println("Quiz finished!");
    }
}
