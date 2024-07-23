package Modelo;

import javax.persistence.*;

@Entity
@Table(name = "aspnetuserclaims")
public class Aspnetuserclaim {
    @Id
    @Column(name = "Id", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "UserId", nullable = false)
    private Aspnetuser user;

    @Lob
    @Column(name = "ClaimType")
    private String claimType;

    @Lob
    @Column(name = "ClaimValue")
    private String claimValue;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Aspnetuser getUser() {
        return user;
    }

    public void setUser(Aspnetuser user) {
        this.user = user;
    }

    public String getClaimType() {
        return claimType;
    }

    public void setClaimType(String claimType) {
        this.claimType = claimType;
    }

    public String getClaimValue() {
        return claimValue;
    }

    public void setClaimValue(String claimValue) {
        this.claimValue = claimValue;
    }

}