/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.EntryTableOne;
import java.util.List;
import mapper.EntryTableOneMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author user129
 */
public class TableOneDao {
    
    public final JdbcTemplate jdbcTemplate; //why fianl??
    
    @Autowired
    public TableOneDao(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }
    
    public List<EntryTableOne> fineAll(){
        String sql = "SELECT content FROM table1";
        return jdbcTemplate.query(sql, new EntryTableOneMapper());
    }
    
    public void addEntry (EntryTableOne entry){
        String sql ="INSERT INTO table1 (content) VALUES (?)";
        jdbcTemplate.update(sql, entry.getContent());
    }
}
