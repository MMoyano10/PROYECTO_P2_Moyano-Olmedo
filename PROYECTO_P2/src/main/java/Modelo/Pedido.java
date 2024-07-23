package Modelo;

import javax.persistence.*;
import java.time.Instant;

@Entity
@Table(name = "pedidos")
public class Pedido {
    @Id
    @Column(name = "PedidoID", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "ClienteID", nullable = false)
    private Cliente clienteID;

    @Column(name = "FechaPedido", nullable = false)
    private Instant fechaPedido;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Cliente getClienteID() {
        return clienteID;
    }

    public void setClienteID(Cliente clienteID) {
        this.clienteID = clienteID;
    }

    public Instant getFechaPedido() {
        return fechaPedido;
    }

    public void setFechaPedido(Instant fechaPedido) {
        this.fechaPedido = fechaPedido;
    }

}