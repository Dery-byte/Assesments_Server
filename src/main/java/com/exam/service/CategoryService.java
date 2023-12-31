package com.exam.service;

import com.exam.model.exam.Category;
import com.exam.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.LinkedHashSet;
import java.util.Set;

@Service
public class CategoryService  {
@Autowired
private CategoryRepository categoryRepository;
    public Category addCategory(Category category){
        return  this.categoryRepository.save(category);
    }

    public Category UpdateCategory(Category category){
        return  this.categoryRepository.save(category);
    }

    public Set<Category> getCategories(){
        return new LinkedHashSet<>(this.categoryRepository.findAll());
    }


    public Category getCategory(Long categoryId){
        return this.categoryRepository.findById(categoryId).get();
    }

    public void deleteCategory(Long categoryId){
        Category category = new Category();
        category.setCid(categoryId);
        this.categoryRepository.delete(category);
    }
}
