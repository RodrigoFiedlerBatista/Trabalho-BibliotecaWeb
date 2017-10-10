package model;

import dao.ClienteDAO;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Cliente {
    
    private int id_cliente;
    private String nome;
    private String cpf;
    private String telefone;
    private String cep;
    private String login;
    private String senha;
    private String chave_senha;
    private String email;
    private boolean adm;
    private static List<Cliente> clientes = new ArrayList();
    
    public static void atualizaClientes() throws ClassNotFoundException, SQLException{
        ClienteDAO dao = new ClienteDAO();
        clientes = dao.consulta();
    }

    public Cliente(int id_cliente, String nome, String cpf, String telefone, String cep, String login, String senha) {
        this.id_cliente = id_cliente;
        this.nome = nome;
        this.cpf = cpf;
        this.telefone = telefone;
        this.cep = cep;
        this.login = login;
        this.senha = senha;
    }

    public Cliente() {
    }

    public String getChave_senha() {
        return chave_senha;
    }

    public void setChave_senha(String chave_senha) {
        this.chave_senha = chave_senha;
    }
    
    public static List<Cliente> getClientes() {
        return clientes;
    }

    public static void setClientes(List<Cliente> clientes) {
        Cliente.clientes = clientes;
    }

    public boolean isAdm() {
        return adm;
    }

    public void setAdm(boolean adm) {
        this.adm = adm;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    
    
}
