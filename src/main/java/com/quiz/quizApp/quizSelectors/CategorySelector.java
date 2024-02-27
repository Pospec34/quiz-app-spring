package com.quiz.quizApp.quizSelectors;

import com.quiz.quizApp.dto.CategoryDTO;
import com.quiz.quizApp.service.CategoryService;
import lombok.AllArgsConstructor;

import java.util.List;
import java.util.Scanner;

@AllArgsConstructor
public class CategorySelector {

    private final CategoryService categoryService;
    private final SubCategorySelector subCategorySelector;

    public void displayCategories(){
        List<CategoryDTO> categories = categoryService.getCategories();
        Scanner scanner = new Scanner(System.in);

        int choice = -1;

        while (choice != 0){
            System.out.println("Please choose a category: ");
            for (int i = 0; i < categoryService.getCategories().size(); i++){
                System.out.println((i + 1) + ". " + categories.get(i).getName());
            }
            System.out.println("");
            System.out.println("0: Return to Main menu");

            System.out.printf("Enter your choice: ");
            choice = scanner.nextInt();

            if (choice == 0){
                return;
            } else if (choice > 0 && choice <= categories.size()){
                subCategorySelector.displaySubCategories(Long.valueOf(choice));
            } else {
                System.out.println("Invalid choice. Please select a valid category.");
                System.out.println("");
            }
        }
    }

}
