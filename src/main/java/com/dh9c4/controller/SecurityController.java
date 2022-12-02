package com.dh9c4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SecurityController {
    @GetMapping(value = {"/"})
    public String homepage() {
        return "home";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }
}
