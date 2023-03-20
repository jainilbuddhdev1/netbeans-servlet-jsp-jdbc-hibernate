/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ce041;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author New
 */
public class NewTagHandler extends SimpleTagSupport {

    private String name;
    private String url;

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }
            out.println("<span>Copyright &copy;" + name + "</span> <img height=15 width=15 src='" + url + "'/>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in NewTagHandler tag", ex);
        }
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setUrl(String url) {
        this.url = url;
    }
    
}
