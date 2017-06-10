package com.example.demo.entity;

import com.example.demo.common.annotation.CheckField;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

import javax.persistence.Entity;

/**
 * Created by cztzc520 on 17/6/3.
 */
@Document(collection="user")
public class User extends BaseEntity{
    @Indexed
    private String name;
    private String pwd;
    private Integer age;
    @Indexed
    private String IdCardNo;

    @CheckField
    public String getIdCardNo() {
        return IdCardNo;
    }

    public void setIdCardNo(String idCardNo) {
        IdCardNo = idCardNo;
    }

    @CheckField
    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    @CheckField
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @CheckField
    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }
}
