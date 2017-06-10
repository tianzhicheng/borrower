package com.example.demo.common.trategy.check;

import com.example.demo.common.constant.CheckConstant;
import com.example.demo.common.trategy.CustomerSingleCheck;

/**
 * Created by cztzc520 on 17/6/10.
 */
public class IdCardNoCheck<T> implements CustomerSingleCheck<T> {
    private final int minLen = 15;
    private final int maxLen = 18;

    @Override
    public boolean verify(T t) {
        String idCardNo = "";
        if(t instanceof String)
            idCardNo = (String)t;
        if(idCardNo.length() == maxLen || idCardNo.length() == minLen )
            return CheckConstant.SUCCESS;
        return CheckConstant.FAILED;
    }
}
