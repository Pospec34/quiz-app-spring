package com.quiz.quizApp;


import com.quiz.quizApp.ui.QuizUI;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;


@SpringBootApplication
@RequiredArgsConstructor
public class QuizAppApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext context = SpringApplication.run(QuizAppApplication.class, args);

		QuizUI quizUI = context.getBean(QuizUI.class);

		quizUI.mainMenu();
	}

}
