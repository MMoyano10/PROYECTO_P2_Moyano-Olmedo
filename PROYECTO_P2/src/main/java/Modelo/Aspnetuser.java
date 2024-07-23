package Modelo;

import javax.persistence.*;
import java.time.Instant;

@Entity
@Table(name = "aspnetusers")
public class Aspnetuser {
    @Id
    @Column(name = "Id", nullable = false, length = 128)
    private String id;

    @Column(name = "Email", length = 256)
    private String email;

    @Column(name = "EmailConfirmed", nullable = false)
    private Boolean emailConfirmed = false;

    @Lob
    @Column(name = "PasswordHash")
    private String passwordHash;

    @Lob
    @Column(name = "SecurityStamp")
    private String securityStamp;

    @Lob
    @Column(name = "PhoneNumber")
    private String phoneNumber;

    @Column(name = "PhoneNumberConfirmed", nullable = false)
    private Boolean phoneNumberConfirmed = false;

    @Column(name = "TwoFactorEnabled", nullable = false)
    private Boolean twoFactorEnabled = false;

    @Column(name = "LockoutEndDateUtc")
    private Instant lockoutEndDateUtc;

    @Column(name = "LockoutEnabled", nullable = false)
    private Boolean lockoutEnabled = false;

    @Column(name = "AccessFailedCount", nullable = false)
    private Integer accessFailedCount;

    @Column(name = "UserName", nullable = false, length = 256)
    private String userName;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Boolean getEmailConfirmed() {
        return emailConfirmed;
    }

    public void setEmailConfirmed(Boolean emailConfirmed) {
        this.emailConfirmed = emailConfirmed;
    }

    public String getPasswordHash() {
        return passwordHash;
    }

    public void setPasswordHash(String passwordHash) {
        this.passwordHash = passwordHash;
    }

    public String getSecurityStamp() {
        return securityStamp;
    }

    public void setSecurityStamp(String securityStamp) {
        this.securityStamp = securityStamp;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Boolean getPhoneNumberConfirmed() {
        return phoneNumberConfirmed;
    }

    public void setPhoneNumberConfirmed(Boolean phoneNumberConfirmed) {
        this.phoneNumberConfirmed = phoneNumberConfirmed;
    }

    public Boolean getTwoFactorEnabled() {
        return twoFactorEnabled;
    }

    public void setTwoFactorEnabled(Boolean twoFactorEnabled) {
        this.twoFactorEnabled = twoFactorEnabled;
    }

    public Instant getLockoutEndDateUtc() {
        return lockoutEndDateUtc;
    }

    public void setLockoutEndDateUtc(Instant lockoutEndDateUtc) {
        this.lockoutEndDateUtc = lockoutEndDateUtc;
    }

    public Boolean getLockoutEnabled() {
        return lockoutEnabled;
    }

    public void setLockoutEnabled(Boolean lockoutEnabled) {
        this.lockoutEnabled = lockoutEnabled;
    }

    public Integer getAccessFailedCount() {
        return accessFailedCount;
    }

    public void setAccessFailedCount(Integer accessFailedCount) {
        this.accessFailedCount = accessFailedCount;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

}