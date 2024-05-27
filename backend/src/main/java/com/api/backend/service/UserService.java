package com.api.backend.service;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.api.backend.model.User;
import com.api.backend.repository.UserRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService {

    private UserRepository userRepository;

    public Optional<User> getUser(Long id){
        return userRepository.findById(id);
    }

}
