package model;

import dao.LivroDAO;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Livro {
    
    private int id;
    private String titulo;
    private String autor;
    private int ano;
    private String editora;
    private float valor;
    private String url;
    private static List<Livro> livros = new ArrayList();

    public Livro(int id, String titulo, String autor, int ano, String editora, float valor) {
        this.id = id;
        this.titulo = titulo;
        this.autor = autor;
        this.ano = ano;
        this.editora = editora;
        this.valor = valor;
    }

    public Livro() {
    }
    
    public static void atualizaLivros() throws ClassNotFoundException, SQLException{
        LivroDAO dao = new LivroDAO();
        livros = dao.consulta();
    }

    public static List<Livro> getLivros() {
        return livros;
    }

    public static void setLivros(List<Livro> livros) {
        Livro.livros = livros;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public String getEditora() {
        return editora;
    }

    public void setEditora(String editora) {
        this.editora = editora;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }
    
}
