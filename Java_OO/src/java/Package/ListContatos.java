/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Package;
/**
 *
 * @author Okami
 */
public class ListContatos {
    
    public ListContatos(String nome, String num_tel, Data nasc){
    this.nome = nome;
    this.num_tel = num_tel;
    this.nasc = nasc;
    }
    
    private String nome;
    public void setNome(){this.nome = nome;}
    public String getNome(){return nome;}
            
    private String num_tel;
    public void setNum(){this.num_tel = num_tel;}
    public String getNum(){return num_tel;}
    
    private Data nasc;
    public void setNasc(Data nasc){this.nasc = nasc;}
    public Data getNasc(){return nasc;}
}
