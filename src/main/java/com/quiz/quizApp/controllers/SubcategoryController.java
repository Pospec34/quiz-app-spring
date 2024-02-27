package com.quiz.quizApp.controllers;


import com.quiz.quizApp.dto.SubcategoryDTO;
import com.quiz.quizApp.service.SubcategoryService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
@RequestMapping(path = "api/subcategories")
public class SubcategoryController {

    private final SubcategoryService subcategoryService;

    @GetMapping("all")
    public List<SubcategoryDTO> getAllSubcategories(){
        return subcategoryService.getSubcategories();
    }

    @GetMapping("/byId/{id}")
    public SubcategoryDTO getSubcategoryById(@PathVariable Long id){
        return subcategoryService.getSubcategoryByID(id);
    }

    @GetMapping("/byCategoryId/{categoryId}")
    public List<SubcategoryDTO> getSubcategoryByCategoryId(@PathVariable Long categoryId){
        return subcategoryService.getSubCategoriesByCategoryID(categoryId);
    }

}
