package com.api.backend.service;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.api.backend.model.User;
import com.api.backend.model.UserResponse;
import com.api.backend.repository.UserRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService {

    private UserRepository userRepository;

    public UserResponse getUser(Long id){
        Optional<User> user = userRepository.findById(id);
        return new UserResponse(user.get().getKIdusuario(), user.get().getNNombre(), user.get().getNUsuario(), user.get().getNEmail());
    }

}
