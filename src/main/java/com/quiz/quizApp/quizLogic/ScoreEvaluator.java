package com.quiz.quizApp.quizLogic;

public class ScoreEvaluator {

    public void evaluateScore(int score, int numberOfQuestions){
        System.out.println("Quiz finished!");
        System.out.println("Score: " + score + "/" + numberOfQuestions);
        System.out.println("Percentage: " + (((double)score / numberOfQuestions) * 100) + "%");
    }
}
