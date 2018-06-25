/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mapper;

import entity.EntryTableOne;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author user129
 */
public class EntryTableOneMapper implements RowMapper<EntryTableOne>{

    @Override
    public EntryTableOne mapRow(ResultSet rs, int i) throws SQLException {
        EntryTableOne entry = new EntryTableOne();
        entry.setContent(rs.getString("content"));
        return entry;
    }
    
}
