/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.EntryTableOne;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.TableOneService;

/**
 *
 * @author user129
 */

@Controller
public class MainController {
    
    @Autowired
    TableOneService tableOneService;    
    
    @RequestMapping("/main")
    public String Main(Model model){
        model.addAttribute("tableOne", tableOneService.findAll());
        return "main";
    }
    
    @RequestMapping("/admin")
    public String Admin(){
        return "admin";
    }
    
    @RequestMapping("/admin/articles")
    public String Articles(Model model){
        model.addAttribute("tableOne", tableOneService.findAll());
        return "articles";
    }
    
    @RequestMapping(method=RequestMethod.POST, value="/admin/articles/add")
    public String AddEntry(@ModelAttribute("entryTableOne") EntryTableOne entryTableOne){
        tableOneService.addEntry(entryTableOne);
        return "redirect:/admin/articles.htm";
    }
    
    @RequestMapping("/admin/articles/add")
    public String AddPage(Model model){
        model.addAttribute(new EntryTableOne());
        return "add";
    }
    
    @RequestMapping("/articles/{slug}")
    public String Slug(@PathVariable("slug") String slug, Model model){
        model.addAttribute("entry", tableOneService.getBySlug(slug));
        return "entry";
    }
}
