package com.example.demo.config.filter;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

/**
 * Created by cztzc520 on 17/6/10.
 */
public class WebSiteMeshFilter extends ConfigurableSiteMeshFilter{
    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder){
        builder.addDecoratorPath("/borrower/*","/templates/pages/decorator/main.jsp");
    }

}
