/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int303.first.filter;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author INT303
 */
public class LoggerFilter implements Filter {

    private FilterConfig filterConfig;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.filterConfig=filterConfig;
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        long before=System.currentTimeMillis();//จำเวลาปัจจุบันเอาไว้
        
        chain.doFilter(request, response);//สั่งให้ไปทำงานตาม chain
        
        long duration=System.currentTimeMillis()-before;
        String url = ((HttpServletRequest)request).getRequestURI();
        
        String msg=String.format("%s Servlet Duration:%d millisecond(s) \n",url, duration);
        
        filterConfig.getServletContext().log(msg);//เขียนลง log
    }

    @Override
    public void destroy() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
 
}
