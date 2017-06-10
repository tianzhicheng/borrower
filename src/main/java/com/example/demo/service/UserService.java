package com.example.demo.service;

import com.example.demo.entity.User;
import com.example.demo.repository.UserRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * Created by cztzc520 on 17/6/3.
 */
@Controller
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public User saveUser(User user){
        return userRepository.save(user);
    }

    public void register(User user){
        String userId = user.getId();
        User old = findUserByUserId(userId);
        if(old == null){
            saveUser(user);
            return;
        }
        BeanUtils.copyProperties(old,user);
        saveUser(old);
    }

    public User findUserByUserId(String userId){
       return userRepository.findOne(userId);
    }
}
