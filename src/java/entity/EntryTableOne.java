/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author user129
 */
public class EntryTableOne {
    
    private String content;
    private String title;
    private String slug;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSlug() {
        return slug;
    }

    public void setSlug(String slug) {
        this.slug = slug;
    }
    
    public void setContent(String content) {
        this.content = content;
    }

    public String getContent() {
        return content;
    }
           
    
    public EntryTableOne(){ }
    
}
