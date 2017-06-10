package com.example.demo.common.utils;

import com.example.demo.common.annotation.CheckField;
import com.example.demo.common.constant.CheckConstant;
import com.example.demo.common.trategy.CheckStrategy;
import com.example.demo.common.trategy.check.AgeCheck;
import com.example.demo.common.trategy.check.UserCheck;
import com.example.demo.entity.User;

import java.lang.reflect.Method;

/**
 * Created by cztzc520 on 17/6/10.
 */
public class VerifyDataUtil {

    //整体非空校验
    public static<T> boolean simpleVerifyField(T t){
        Class clazz = t.getClass();
        Method[] methods = clazz.getMethods();
        for(Method m : methods ){
            CheckField annotation = m.getAnnotation(CheckField.class);
            if(annotation != null){
                boolean check = check(m, t);
                if(!check)
                    return CheckConstant.FAILED;
            }
        }
        return CheckConstant.SUCCESS;
    }

    /**
     * 校验
     * @param t 具体字段
     * @param cs 校验策略
     * @param <T>
     * @return
     */
    public static<T> boolean verify(T t,CheckStrategy<T> cs){
        if(cs == null)
            return (simpleVerifyField(t));
        return cs.verify(t);
    }

    /**
     * 数据校验方法
      * @param t 校验对象 数据或者字段
     * @param <T>
     * @return
     */
    public static<T> boolean verify(T t){
        return verify(t,null);
    }

    /**
     * 对多个结果进行判断
     * @param result
     * @return
     */
    public static boolean verifyResult(boolean ...result){
        for(boolean b : result){
            if(!b)
                return CheckConstant.FAILED;
        }
        return CheckConstant.SUCCESS;
    }

    private static<T> boolean check(Method m,T t){
        try{

            Object obj = m.invoke(t,null);
            return checkField(obj);
        }catch(Exception e){
            return CheckConstant.FAILED;
        }
    }

    private static boolean checkField(Object o){
        if(o == null)
            return CheckConstant.FAILED;
        return CheckConstant.SUCCESS;
    }



    //=========================================================


    private static<T> void prt(T t){
        System.out.println(t);
    }

    public static void main(String[] args){
        assert(testDemo1() == false);
        assert(testDemo2() == true);
        assert(testDemo3() == false);
        assert(testDemo4() == true);
        assert(testDemo5() == true);
        prt("1");

    }

    private static User getUser(){
        User user = new User();
        user.setName("大傻逼");
        user.setPwd("sdfsdf");
        user.setAge(19);
        user.setIdCardNo("41081119920807005x");
        return user;
    }

    private static boolean testDemo1(){
       return simpleVerifyField(new User());
    }


    private static boolean testDemo2(){

        boolean b = verify(getUser());
        return b;
    }
    private static boolean testDemo3(){
        return verify(15,new AgeCheck<>());
    }
    private static boolean testDemo4(){
        return verify(18,new AgeCheck<>());
    }
    private static boolean testDemo5(){

        return verify(getUser(),new UserCheck<>());
    }

}






