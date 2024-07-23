package Modelo;

import javax.persistence.*;

@Entity
@Table(name = "pedidositems")
public class Pedidositem {
    @Id
    @Column(name = "PedidoItemID", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "PedidoID", nullable = false)
    private Pedido pedidoID;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "ProductoID", nullable = false)
    private Producto productoID;

    @Column(name = "Cantidad", nullable = false)
    private Integer cantidad;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Pedido getPedidoID() {
        return pedidoID;
    }

    public void setPedidoID(Pedido pedidoID) {
        this.pedidoID = pedidoID;
    }

    public Producto getProductoID() {
        return productoID;
    }

    public void setProductoID(Producto productoID) {
        this.productoID = productoID;
    }

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

}