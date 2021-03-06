package com.example.facebook_clone_week6.utils;

import java.util.Base64;

public class PasswordHashing {
    public static String encryptPassword(String password){
        return Base64.getEncoder().encodeToString(password.getBytes());
    }

    public static String decryptPassword(String encryptedString){
        return new String (Base64.getMimeDecoder().decode(encryptedString));
    }
}
