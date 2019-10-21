package com.litmus7.shopmate.profile.dao;

import com.litmus7.shopmate.profile.dto.LoginDto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface OAuthRepositoryDao extends JpaRepository<LoginDto, Integer> {

    @Query(value = "select token from login where login_id=?1", nativeQuery = true)
    public String existsByLoginId(String email);

}
