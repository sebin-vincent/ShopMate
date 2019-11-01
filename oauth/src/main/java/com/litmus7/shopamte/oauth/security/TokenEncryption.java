package com.litmus7.shopamte.oauth.security;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Base64;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class TokenEncryption {

    public static String encode(String token) {
        Base64.Encoder encoder = Base64.getUrlEncoder();
        return encoder.encodeToString(token.getBytes());
    }

    public static String decode(String cipher) {
        Base64.Decoder decoder = Base64.getUrlDecoder();
        return new String(decoder.decode(cipher));
    }

}