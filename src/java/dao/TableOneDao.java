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
    
    public List<EntryTableOne> finedAll(){
        String sql = "SELECT * FROM table1";
        return jdbcTemplate.query(sql, new EntryTableOneMapper());
    }
    
    public void addEntry (EntryTableOne entry){
        String sql ="INSERT INTO table1 (title,content,slug) VALUES (?,?,?)";
        jdbcTemplate.update(sql, entry.getTitle(), entry.getContent(), entry.getSlug());
    }
    
    public EntryTableOne getBySlug(String slug){
        String sql = "SELECT * FROM table1 WHERE slug=?";
        return jdbcTemplate.queryForObject(sql, new EntryTableOneMapper(), slug);
    }
}
