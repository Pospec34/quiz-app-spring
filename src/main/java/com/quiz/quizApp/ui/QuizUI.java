package com.quiz.quizApp.ui;

import com.quiz.quizApp.quizSelectors.CategorySelector;
import lombok.RequiredArgsConstructor;

import java.util.Scanner;

@RequiredArgsConstructor
public class QuizUI {
    private Scanner scanner = new Scanner(System.in);

    private final CategorySelector categorySelector;

    public void mainMenu(){
        while (true){
            System.out.println("\n*****Welcome to QUIZ 3000*****");

            System.out.println("1. Start quiz");
            System.out.println("2. Create a new quiz");
            System.out.println("3. Quit");
            System.out.printf("Choose: ");

            String choice = scanner.nextLine();
            switch (choice){
                case "1":
                    categorySelector.displayCategories();
                    break;
                case "2":
                    System.out.println("Not implemented yet...");
                    break;
                case "3":
                    System.out.println("Goodbye..");
                    System.exit(0);
                default:
                    System.out.println("Invalid choice");
                    break;
            }
        }
    }
}
