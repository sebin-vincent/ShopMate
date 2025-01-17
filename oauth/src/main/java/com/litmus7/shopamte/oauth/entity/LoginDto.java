package com.litmus7.shopamte.oauth.entity;


import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.boot.autoconfigure.domain.EntityScan;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@EntityScan(value = "com.litmus7.shopmate")
@Entity
@Table(name = "login")
@JsonIgnoreProperties(ignoreUnknown = true)
public class LoginDto {

    @Id
    @Column(name="profile_id")
    private int profile_Id;

    @Column(name="login_id")
    private String login_Id;

    @Column(name="password")
    private String password;

    @Transient
    @Column(name = "token")
    private String token;

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    @Transient
    private Map<String,Object> extra;

    public Map<String, Object> getExtra() {
        return extra;
    }
    public void setExtra(Map<String, Object> extra) {
        this.extra = extra;
    }
    public int getProfile_Id() {
        return profile_Id;
    }
    public void setProfile_Id(int profile_Id) {
        this.profile_Id = profile_Id;
    }
    public String getLogin_Id() {
        return login_Id;
    }
    public void setLogin_Id(String login_Id) {
        this.login_Id = login_Id;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    public LoginDto(int profile_Id, String login_Id, String password, String token, Map<String, Object> extra) {
        this.profile_Id = profile_Id;
        this.login_Id = login_Id;
        this.password = password;
        this.token = token;
        this.extra = extra;
    }

    public LoginDto() {
    }
}
