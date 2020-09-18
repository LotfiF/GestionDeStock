package com.stock.mvc.controllers;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.stock.mvc.entities.Category;
import com.stock.mvc.services.ICategoryService;


@Controller
@RequestMapping(value = "/category")
public class CategoryController {
	
	@Autowired
	private ICategoryService categoryService;	
	
	@RequestMapping(value = "/")
	public String category(Model model) {
		
		List<Category> categories = categoryService.selectAll();
		
		if (categories == null) {
			categories = new ArrayList<Category>();
		}
		
		model.addAttribute("categories", categories);
		
		return "category/category";
	}
	
	@RequestMapping(value = "/nouveau", method = RequestMethod.GET)
	public String ajouterCategory(Model model){
		
		Category category = new Category();
		
		model.addAttribute("category", category);
		
		return "category/ajouterCategory";
	}
	
	/* à vérifier*/
	@RequestMapping(value ="/enregistrer")
	public String enregisterCategory(Model model, Category category) {
		if (category !=null) {
		 if (category.getIdCategory() != null) {
			 categoryService.update(category); 
		 } else {
			 categoryService.save(category);
		 }
	    }
		return "redirect:/category/";		
	}
	
	@RequestMapping(value ="/modifier/{idCategory}")
	public String modifierCategory(Model model, @PathVariable Long idCategory) {
		
		if (idCategory != null) {
			Category category =categoryService.getById(idCategory);
			if (category != null) {
			model.addAttribute("category", category);
		  }
		}
		return "category/ajouterCategory";
		
	}
	
	@RequestMapping(value ="/supprimer/{idCategory}")
	public String supprimerCategory(Model model, @PathVariable Long idCategory) {
		
		if (idCategory != null) {
			Category category =categoryService.getById(idCategory);
			if (category != null) {
				//TODO Verification avant Supression
				categoryService.remove(idCategory);
		    }
		}
		return "redirect:/category/";	
	}

}
