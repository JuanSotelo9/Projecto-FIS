package com.api.backend.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.api.backend.model.User;


@Repository
public interface UserRepository extends JpaRepository<User, Long>{

    public Optional<User> findBynUsuario(String usuario);

    public Optional<User> findBynEmail(String nEmail);

}
