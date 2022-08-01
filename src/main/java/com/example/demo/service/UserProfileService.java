package com.example.demo.service;

import com.example.demo.entity.UserProfile;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserProfileService {

    List<UserProfile> getProfile();
    ResponseEntity<UserProfile> getMyProfile();
    UserProfile getUserProfile();
    ResponseEntity<?> editProfile(int id, UserProfile userProfile);
    void saveCustomer(UserProfile userProfile);

}
