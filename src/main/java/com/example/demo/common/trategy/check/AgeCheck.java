package com.example.demo.common.trategy.check;

import com.example.demo.common.constant.CheckConstant;
import com.example.demo.common.trategy.CustomerSingleCheck;

/**
 * Created by cztzc520 on 17/6/10.
 */
public class AgeCheck<T> implements CustomerSingleCheck<T> {
    private final Integer minAge = 18;
    private final Integer maxAge = 120;
    private final Integer defaultAge = 0;

    @Override
    public boolean verify(T t) {
        Integer age = defaultAge;
        if(t instanceof Integer)
            age = (Integer)t;
        if(age >= minAge && age <= maxAge){
           return CheckConstant.SUCCESS;
        }
        return CheckConstant.FAILED;
    }
}
