package com.example.demo.common.trategy.check;

import com.example.demo.common.trategy.CheckStrategy;

/**
 * Created by cztzc520 on 17/6/10.
 */

public class MoneyCheck<T> implements CheckStrategy<T>{
    private static final Double max = 100000.0d;
    private static final Double min = 100.0d;
    @Override
    public boolean verify(T t) {
        Double amount = 0.0d;
        if(t instanceof Double){
             amount =(Double)t;
        }
        if(amount >= min && amount <=max)
            return true;
        return false;
    }
}
