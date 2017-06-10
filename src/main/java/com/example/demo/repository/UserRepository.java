package com.example.demo.repository;

import com.example.demo.entity.User;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by cztzc520 on 17/6/3.
 */
@Repository
public interface UserRepository extends MongoRepository<User,String>{
}
