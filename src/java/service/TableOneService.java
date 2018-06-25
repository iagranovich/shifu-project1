/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.TableOneDao;
import entity.EntryTableOne;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author user129
 */
public class TableOneService {
    
    @Autowired
    TableOneDao tableOneDao;
    
    public List<EntryTableOne> findAll(){
        return tableOneDao.fineAll();
    }
    
    public void addEntry(EntryTableOne entry){
        tableOneDao.addEntry(entry);
    }
}