package com.example.demo.common.trategy;

/**
 * Created by cztzc520 on 17/6/10.
 */
public interface CheckStrategy<T> {
    public boolean verify(T t);
}
