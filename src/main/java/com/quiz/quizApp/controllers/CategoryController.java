package com.quiz.quizApp.controllers;

import com.quiz.quizApp.dto.CategoryDTO;
import com.quiz.quizApp.service.CategoryService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
@RequestMapping(path = "api/categories")
public class CategoryController {
    private final CategoryService categoryService;

    @GetMapping("/all")
    public List<CategoryDTO> getAllCategories(){
        return categoryService.getCategories();
    }

    @GetMapping("/byId/{id}")
    public CategoryDTO getCategoryById(@PathVariable Long id){
        return categoryService.getCategoryByID(id);
    }
}
