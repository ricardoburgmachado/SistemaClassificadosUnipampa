
package br.com.model;

/**
 *
 * @author Ricardo
 */
public class Pessoa {
    
    
    public Pessoa(){ }
    
    public Pessoa(int id, String nome){
        this.nome = nome;
        this.id = id;    
    }
    
    private int id;
    private String nome;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }
      
    
}
