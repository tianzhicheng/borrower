package com.example.demo;

import com.example.demo.entity.User;
import com.example.demo.repository.UserRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DemoApplicationTests {
	private Logger log = LoggerFactory.getLogger(DemoApplicationTests.class);
	@Autowired
	private UserRepository userRepository;
	@Test
	public void contextLoads() {
		User user = new User();
        user.setName("tzc");
		user.setPwd("tzc");
        User dbUser = userRepository.save(user);
		String userId = dbUser.getId();
		User user2 = userRepository.findOne(userId);
		log.info("user {}",dbUser);
		log.info("uesr2 {}",user2);

	}

}
