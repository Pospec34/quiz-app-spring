package com.quiz.quizApp.quizSelectors;

import com.quiz.quizApp.dto.CategoryDTO;
import com.quiz.quizApp.dto.SubcategoryDTO;
import com.quiz.quizApp.quizLogic.Quiz;
import com.quiz.quizApp.service.CategoryService;
import com.quiz.quizApp.service.SubcategoryService;
import lombok.AllArgsConstructor;

import java.util.List;
import java.util.Scanner;

@AllArgsConstructor
public class SubCategorySelector {
    private final SubcategoryService subCategoryService;
    private final Quiz quiz;

    public void displaySubCategories(Long categoryId){
        List<SubcategoryDTO> subCategories = subCategoryService.getSubCategoriesByCategoryID(categoryId);
        Scanner scanner = new Scanner(System.in);


        int choice = -1;

        while (choice != 0){
            System.out.println("\nPlease choose a subcategory: ");
            for (int i = 0; i < subCategories.size(); i++){
                System.out.println((i + 1) + ". " + subCategories.get(i).getName());
            }
            System.out.println("\n0: Return to Categories selection");

            System.out.printf("Enter your choice: ");
            choice = scanner.nextInt();

            if (choice == 0){
                return;
            } else if (choice > 0 && choice <= subCategories.size() ){
                quiz.startQuiz(Long.valueOf(choice));
            } else {
                System.out.println("Invalid choice. Please select a valid subcategory.\n");
            }
        }
    }
}
