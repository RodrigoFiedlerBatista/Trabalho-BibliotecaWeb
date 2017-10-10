package model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Pedido {
    private int id_pedido;
    private int id_livro;
    private int id_cliente;
    private Date data;
    private int quantidade;
    private float total;
    private static List<Pedido> pedidos = new ArrayList();

    public Pedido(int id_pedido, int id_livro, int id_cliente, Date data, int quantidade, float total) {
        this.id_pedido = id_pedido;
        this.id_livro = id_livro;
        this.id_cliente = id_cliente;
        this.data = data;
        this.quantidade = quantidade;
        this.total = total;
    }

    public Pedido() {
    }

    public int getId_pedido() {
        return id_pedido;
    }

    public void setId_pedido(int id_pedido) {
        this.id_pedido = id_pedido;
    }

    public int getId_livro() {
        return id_livro;
    }

    public void setId_livro(int id_livro) {
        this.id_livro = id_livro;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

}
