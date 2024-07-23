package Modelo;

import javax.persistence.*;

@Entity
@Table(name = "aspnetuserlogins")
public class Aspnetuserlogin {
    @EmbeddedId
    private AspnetuserloginId id;

    @MapsId("userId")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "UserId", nullable = false)
    private Aspnetuser user;

    public AspnetuserloginId getId() {
        return id;
    }

    public void setId(AspnetuserloginId id) {
        this.id = id;
    }

    public Aspnetuser getUser() {
        return user;
    }

    public void setUser(Aspnetuser user) {
        this.user = user;
    }

}