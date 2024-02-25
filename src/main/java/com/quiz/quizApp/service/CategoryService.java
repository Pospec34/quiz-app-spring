package com.quiz.quizApp.service;

import com.quiz.quizApp.dto.CategoryDTO;
import com.quiz.quizApp.dto.QuestionDTO;
import com.quiz.quizApp.models.Answer;
import com.quiz.quizApp.models.Category;
import com.quiz.quizApp.models.Question;
import com.quiz.quizApp.repository.CategoryRepository;
import lombok.AllArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@AllArgsConstructor
public class CategoryService {

    private final CategoryRepository categoryRepository;

    public List<CategoryDTO> getCategories(){
        List<Category> categories = categoryRepository.findAll();
        List<CategoryDTO> categoryDTOS = new ArrayList<>();

        for (Category category : categories){
            categoryDTOS.add(convertToDTO(category));
        }
        return categoryDTOS;
    }

    private CategoryDTO convertToDTO(Category category) {
        CategoryDTO dto = new CategoryDTO();
        dto.setId(category.getId());
        dto.setName(category.getName());

        return dto;
    }
}
