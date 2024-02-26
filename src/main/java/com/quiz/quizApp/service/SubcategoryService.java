package com.quiz.quizApp.service;

import com.quiz.quizApp.dto.CategoryDTO;
import com.quiz.quizApp.dto.SubcategoryDTO;
import com.quiz.quizApp.models.Category;
import com.quiz.quizApp.models.Subcategory;
import com.quiz.quizApp.repository.SubcategoryRepository;
import lombok.AllArgsConstructor;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@AllArgsConstructor
public class SubcategoryService {
    private final SubcategoryRepository subcategoryRepository;

    public List<SubcategoryDTO> getSubcategories(){
        List<Subcategory> subcategories = subcategoryRepository.findAll();
        List<SubcategoryDTO> subcategoryDTOS = new ArrayList<>();

        for (Subcategory subcategory : subcategories){
            subcategoryDTOS.add(convertToDTO(subcategory));
        }
        return subcategoryDTOS;
    }

    public SubcategoryDTO getSubcategoryByID(Long id){
        Optional<Subcategory> subcategoryOptional = subcategoryRepository.findById(id);

        if (subcategoryOptional.isPresent()) {
            return convertToDTO(subcategoryOptional.get());
        } else {
            return null;
        }
    }

    private SubcategoryDTO convertToDTO(Subcategory subcategory) {
        SubcategoryDTO dto = new SubcategoryDTO();
        dto.setId(subcategory.getId());
        dto.setName(subcategory.getName());

        return dto;
    }

}
