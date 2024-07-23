package Modelo;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.util.Objects;

@Embeddable
public class AspnetuserloginId implements java.io.Serializable {
    private static final long serialVersionUID = 8999767858234475460L;
    @Column(name = "LoginProvider", nullable = false, length = 128)
    private String loginProvider;

    @Column(name = "ProviderKey", nullable = false, length = 128)
    private String providerKey;

    @Column(name = "UserId", nullable = false, length = 128)
    private String userId;

    public String getLoginProvider() {
        return loginProvider;
    }

    public void setLoginProvider(String loginProvider) {
        this.loginProvider = loginProvider;
    }

    public String getProviderKey() {
        return providerKey;
    }

    public void setProviderKey(String providerKey) {
        this.providerKey = providerKey;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AspnetuserloginId entity = (AspnetuserloginId) o;
        return Objects.equals(this.loginProvider, entity.loginProvider) &&
                Objects.equals(this.userId, entity.userId) &&
                Objects.equals(this.providerKey, entity.providerKey);
    }

    @Override
    public int hashCode() {
        return Objects.hash(loginProvider, userId, providerKey);
    }

}