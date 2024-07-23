package Modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "aspnetroles")
public class Aspnetrole {
    @Id
    @Column(name = "Id", nullable = false, length = 128)
    private String id;

    @Column(name = "Name", nullable = false, length = 256)
    private String name;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}