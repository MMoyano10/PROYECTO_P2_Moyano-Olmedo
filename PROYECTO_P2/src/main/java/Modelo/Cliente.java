package Modelo;

import javax.persistence.*;

@Entity
@Table(name = "clientes")
public class Cliente {
    @Id
    @Column(name = "ClienteID", nullable = false)
    private Integer id;

    @Column(name = "Nombre", length = 50)
    private String nombre;

    @Column(name = "Direccion", length = 100)
    private String direccion;

    @Column(name = "Ciudad", length = 50)
    private String ciudad;

    @Column(name = "Provincia", length = 50)
    private String provincia;

    @Column(name = "Telefono", length = 10)
    private String telefono;

    @Column(name = "Cedula", nullable = false, length = 15)
    private String cedula;

    @Column(name = "Pais", length = 50)
    private String pais;

    @Column(name = "Foto", length = 50)
    private String foto;

    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "Id_Identity", nullable = false)
    private Aspnetuser idIdentity;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public Aspnetuser getIdIdentity() {
        return idIdentity;
    }

    public void setIdIdentity(Aspnetuser idIdentity) {
        this.idIdentity = idIdentity;
    }

}