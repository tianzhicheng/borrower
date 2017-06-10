package com.example.demo.controller;

import com.example.demo.entity.User;
import com.example.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by cztzc520 on 17/6/3.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;


    @RequestMapping(value = "hello", method = RequestMethod.GET)
    public String hello(Map<String,Object> map){
        map.put("name","tzcsfsdf");
        return "hello";
    }


    @RequestMapping("/register")
    public String register(User user){
        String userId = user.getId();

        return "register";
    }

    @RequestMapping("/file")
    @ResponseBody
    public Map<String,Object> testFile(HttpServletRequest request) throws IOException {
        Map<String,Object> ret = new HashMap<>();
        String path = this.getClass().getClassLoader().getResource("").getPath();
//        String path = request.getServletContext().getRealPath("/");
        String suffix = path;
        File file = new File(suffix);
        String prefix = ".zip";
        File demo = File.createTempFile("demo", prefix, file);
        demo.delete();
        return ret;
    }

}
