package Modelo;

import javax.persistence.*;

@Entity
@Table(name = "aspnetuserroles")
public class Aspnetuserrole {
    @EmbeddedId
    private AspnetuserroleId id;

    @MapsId("userId")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "UserId", nullable = false)
    private Aspnetuser user;

    @MapsId("roleId")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "RoleId", nullable = false)
    private Aspnetrole role;

    public AspnetuserroleId getId() {
        return id;
    }

    public void setId(AspnetuserroleId id) {
        this.id = id;
    }

    public Aspnetuser getUser() {
        return user;
    }

    public void setUser(Aspnetuser user) {
        this.user = user;
    }

    public Aspnetrole getRole() {
        return role;
    }

    public void setRole(Aspnetrole role) {
        this.role = role;
    }

}