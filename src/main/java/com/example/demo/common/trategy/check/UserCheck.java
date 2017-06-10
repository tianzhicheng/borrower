package com.example.demo.common.trategy.check;

import com.example.demo.common.constant.CheckConstant;
import com.example.demo.common.trategy.CustomerInstanceCheck;
import com.example.demo.common.utils.VerifyDataUtil;
import com.example.demo.entity.User;

/**
 * Created by cztzc520 on 17/6/10.
 */
public class UserCheck<T> implements CustomerInstanceCheck<T> {
    @Override
    public boolean verify(T t) {
        if(!(t instanceof User))
            return CheckConstant.FAILED;
        User user = (User)t;
        boolean notNull = VerifyDataUtil.simpleVerifyField(user);
        boolean age = VerifyDataUtil.verify(user.getAge(),new AgeCheck<Integer>());
        boolean IdCardNo = VerifyDataUtil.verify(user.getIdCardNo()
                                             ,new IdCardNoCheck<String>());
        return VerifyDataUtil.verifyResult(notNull,age,IdCardNo);
    }
}
