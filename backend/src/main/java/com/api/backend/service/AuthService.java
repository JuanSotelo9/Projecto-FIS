package com.api.backend.service;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.api.backend.model.AuthResponse;
import com.api.backend.model.LoginRequest;
import com.api.backend.model.RegisterRequest;
import com.api.backend.model.Role;
import com.api.backend.model.User;
import com.api.backend.repository.UserRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AuthService {
    
    private final UserRepository userRepository;
    private final JwtService jwtService;
    private final PasswordEncoder passwordEncoder;
    private final AuthenticationManager authenticationManager;

    public AuthResponse login(LoginRequest request){
        authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(request.getUsuario(), request.getPassword()));
        User user = userRepository.findBynusuario(request.getUsuario()).orElseThrow();
        user.setRole(Role.ROLE_USER);
        String token = jwtService.getToken(user);
        return AuthResponse.builder()
            .token(token)
            .build();
    }

    public AuthResponse register(RegisterRequest request){
        User user = User.builder()
            .kIDusuario(request.getId())
            .nnombre(request.getNombre() + " " + request.getApellido())
            .nusuario(request.getUsuario())
            .nemail(request.getEmail())
            .ncontrasena(passwordEncoder.encode(request.getPassword()))
            .role(Role.ROLE_USER)
            .build();

        userRepository.save(user);

        return AuthResponse.builder()
            .token(jwtService.getToken(user))
            .build();
    }
}