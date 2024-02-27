package com.quiz.quizApp.repository;

import com.quiz.quizApp.models.Subcategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface SubcategoryRepository extends JpaRepository<Subcategory, Long> {

    Optional<Subcategory> findById(Long id);

    List<Subcategory> findAllByCategoryId(Long categoryId);

}
