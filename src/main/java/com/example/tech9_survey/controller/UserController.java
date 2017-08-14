package com.example.tech9_survey.controller;

import com.example.tech9_survey.config.EmailSender;
import com.example.tech9_survey.domain.User;
import com.example.tech9_survey.domain.VerificationToken;
import com.example.tech9_survey.service.UserService;
import com.example.tech9_survey.service.VerificationTokenService;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@RestController
@RequestMapping("/users")
public class UserController {

    private UserService userService;
    private VerificationTokenService verificationTokenService;

    public UserController(UserService userService, VerificationTokenService verificationTokenService) {
        this.userService = userService;
        this.verificationTokenService = verificationTokenService;
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<List<User>> findAll() {
        List<User> users = userService.findAll();

        if (users == null) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
        
        return new ResponseEntity<>(users, HttpStatus.OK);
    }

    @RequestMapping(method = RequestMethod.POST)
    public ResponseEntity<Object> save(@RequestBody User user) {
        VerificationToken token = new VerificationToken();
        EmailSender emailSender = new EmailSender();
        token.setToken(UUID.randomUUID().toString());

        if (userService.findByUsername(user.getUsername()) == null) {
            if (userService.findByEmail(user.getEmail()) == null) {
                user.setEnabled(false);
                token.setUser(user);
                verificationTokenService.save(token);
                User savedUser = userService.save(user);
                emailSender.sendEmail(user.getEmail(), "http://localhost:8080/users/activate/" + token.getToken());
                return new ResponseEntity<>(savedUser, HttpStatus.OK);
            } else {
                return ResponseEntity.status(HttpStatus.BAD_REQUEST).contentType(MediaType.TEXT_PLAIN).body("email");
            }
        } else {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).contentType(MediaType.TEXT_PLAIN).body("username");
        }
    }

    @RequestMapping(value = "/activate/{token}", method = RequestMethod.GET)
    public ResponseEntity activateAccount(@PathVariable("token") String token) {
        VerificationToken verificationToken = verificationTokenService.findByToken(token);
        if (verificationToken == null) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).contentType(MediaType.TEXT_PLAIN).body("Account already activated!");
        }
        User user = verificationToken.getUser();
        user.setEnabled(true);
        userService.save(user);
        verificationTokenService.delete(verificationToken.getId());
        return ResponseEntity.status(HttpStatus.OK).contentType(MediaType.TEXT_PLAIN).body("Account activated!");
    }

    @RequestMapping("/login")
    public Map<String, Object> user(Authentication authentication) {
        Map<String, Object> map = new LinkedHashMap<>();

        map.put("name", authentication.getName());
        map.put("roles", AuthorityUtils.authorityListToSet((authentication).getAuthorities()));

        return map;
    }
}
