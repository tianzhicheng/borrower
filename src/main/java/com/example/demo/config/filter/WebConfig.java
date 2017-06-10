package com.example.demo.config.filter;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * Created by cztzc520 on 17/6/10.
 */
@Configuration
public class WebConfig extends WebMvcConfigurerAdapter {
    @Bean
    public FilterRegistrationBean siteMeshFilter(){
       FilterRegistrationBean filter = new FilterRegistrationBean();
        WebSiteMeshFilter siteMeshFilter = new WebSiteMeshFilter();
        filter.setFilter(siteMeshFilter);
        return filter;
    }
}
