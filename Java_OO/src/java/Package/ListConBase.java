/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Package;
import java.util.ArrayList;
/**
 *
 * @author Okami
 */
public class ListConBase {
    private static ArrayList<ListContatos> ListaBase;
    public static ArrayList<ListContatos> getListaBase(){
        if(ListaBase == null){
        ListaBase = new ArrayList<>();
        ListaBase.add(new ListContatos("Renan","(11) 98532-0468",new Data(7,1,2002)));
        ListaBase.add(new ListContatos("Yudi","(11) 94002-8922",new Data(4,8,1992)));
        }
        return ListaBase;
    }
}
