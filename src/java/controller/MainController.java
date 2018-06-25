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
    
    @RequestMapping(method=RequestMethod.POST, value="/admin")
    public String addEntry(EntryTableOne entry){
        tableOneService.addEntry(entry);
        return "redirect:/main.htm";
    }
    
    @RequestMapping("/admin")
    public String Admin(Model model){
        model.addAttribute(new EntryTableOne());
        return "admin";
    }
}
