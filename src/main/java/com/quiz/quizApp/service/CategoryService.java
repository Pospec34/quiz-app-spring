package com.quiz.quizApp.service;

import com.quiz.quizApp.dto.CategoryDTO;
import com.quiz.quizApp.models.Category;
import com.quiz.quizApp.repository.CategoryRepository;
import lombok.AllArgsConstructor;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

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

    public CategoryDTO getCategoryByID(Long id){
        Optional<Category> categoryOptional = categoryRepository.findById(id);

        if (categoryOptional.isPresent()) {
            return convertToDTO(categoryOptional.get());
        } else {
            return null;
        }
    }

    private CategoryDTO convertToDTO(Category category) {
        CategoryDTO dto = new CategoryDTO();
        dto.setId(category.getId());
        dto.setName(category.getName());

        return dto;
    }
}
