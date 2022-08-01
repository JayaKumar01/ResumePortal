package com.example.demo.service;

import com.example.demo.entity.UserProfile;
import com.example.demo.exceptions.NoSuchUserExistsException;
import com.example.demo.repository.ProfileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserProfileServiceImpl implements UserProfileService {

    @Autowired
    private ProfileRepository profileRepository;

    public String hello() {
        return "Hello";
    }

    public List<UserProfile> getProfile(){
        return profileRepository.findAll();
    }

    public ResponseEntity<UserProfile> getMyProfile() {

        UserProfile userProfile = profileRepository.findById(1)
                .orElseThrow(() -> new NoSuchUserExistsException("No User profile Found"));

        return ResponseEntity.ok(userProfile);
    }


    public ResponseEntity<?> editProfile(int id, UserProfile userProfile) {

        UserProfile existingProfile = this.profileRepository.findById(id)
                .orElse(null);

        if(existingProfile == null) {
            throw new NoSuchUserExistsException("No such user exists with id: "+id);
        }
        else {

            existingProfile.setPhone(userProfile.getPhone());
            existingProfile.setEmail(userProfile.getEmail());
            existingProfile.setSummary(userProfile.getSummary());
            existingProfile.setDesignation(userProfile.getDesignation());
            profileRepository.save(existingProfile);
        }

        return ResponseEntity.ok(existingProfile);
    }

    @Override
    public UserProfile getUserProfile() {
        UserProfile existingProfile = this.profileRepository.findById(1)
                .orElse(null);
        return existingProfile;
    }

    @Override
    public void saveCustomer(UserProfile userProfile) {
        UserProfile existingProfile = profileRepository.findById(1)
                .orElseThrow(() -> new NoSuchUserExistsException("User Not Exists"));
        existingProfile.setSummary(userProfile.getSummary());
        existingProfile.setEmail(userProfile.getEmail());
        existingProfile.setDesignation(userProfile.getDesignation());
        existingProfile.setPhone(userProfile.getPhone());
        profileRepository.save(existingProfile);
    }
}
