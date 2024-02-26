package com.quiz.quizApp;

import com.quiz.quizApp.ui.QuizUI;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class QuizAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(QuizAppApplication.class, args);
		QuizUI quizUI = new QuizUI();

		quizUI.mainMenu();
	}

}
