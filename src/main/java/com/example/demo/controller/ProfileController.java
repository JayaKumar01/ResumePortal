package com.example.demo.controller;

import com.example.demo.entity.UserProfile;
import com.example.demo.repository.ProfileRepository;
import com.example.demo.service.UserProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class ProfileController {

    @Autowired UserProfileService userProfileService;
    @Autowired ProfileRepository profileRepository;

    //display Home Page
    @GetMapping("/demo")
    public String myPage(Model theModel) {

        UserProfile userProfile = userProfileService.getUserProfile();
        theModel.addAttribute("user",userProfile);
        return "index";
    }

    @GetMapping("/myProfile")
    public ResponseEntity<UserProfile> getMyProfile() {
        return userProfileService.getMyProfile();
    }


    @GetMapping("/showForm")
    public String showFormUpdate(Model theModel) {
        UserProfile userProfile = userProfileService.getUserProfile();
        theModel.addAttribute("user", userProfile);

        return "user-form";
    }

    @PostMapping("/saveUser")
    public String saveUser(@ModelAttribute("user") UserProfile userProfile) {
        System.out.println(userProfile.getDesignation());
        userProfileService.saveCustomer(userProfile);
        return "redirect:/demo";
    }


}
