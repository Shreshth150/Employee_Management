package com.minor2.oauth2.project.repository;

import com.minor2.oauth2.project.model.security.User;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    @Query("SELECT DISTINCT user FROM User user " +
            "INNER JOIN FETCH user.authorities AS authorities " +
            "WHERE user.username = :username")
    User findByUsername(@Param("username") String username);
}
