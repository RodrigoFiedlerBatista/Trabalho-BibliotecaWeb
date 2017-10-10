/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teste;

import dao.LivroDAO;
import java.sql.SQLException;
import model.Livro;

/**
 *
 * @author Rodrigo
 */
public class teste {
    
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        LivroDAO livroDAO = new LivroDAO();
        Livro livro = new Livro();
        Livro.atualizaLivros();
        for (int i = 0; i < Livro.getLivros().size(); i++) {
            System.out.println(Livro.getLivros().get(i).getId());
        }
          
        
    }
    
    
}
