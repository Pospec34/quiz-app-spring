package com.quiz.quizApp.repository;

import com.quiz.quizApp.models.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.awt.print.Pageable;
import java.util.List;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Long> {
   List<Question> findAllBySubcategory_Category_NameIgnoreCase(String categoryName);

   List<Question> findAllBySubcategoryId(Long subCategoryId);

}
