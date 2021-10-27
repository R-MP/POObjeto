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
public class Data {
    
    public Data(){
    dia=0;
    mes=0;
    ano=0;
    }
    
    public int getDia(){
    return dia;
    }
    public int getMes(){
    return mes;
    }
    public int getAno(){
    return ano;
    }
    
    
    public Data(int dia, int mes, int ano){
    this.setDate(dia, mes, ano);
    }
    
    public void setDate(int dia, int mes, int ano){
    this.setDia(dia);
    this.setMes(mes);
    this.setAno(ano);
    }
    
    public String getDate(){
    String data = "";
    
    if(dia<10)data+="0";
    data += dia+"/";
    if(mes<10)data+="0";
    data += mes+"/";
    if(ano<1000)data+="0";
    if(ano<100)data+="0";
    if(ano<10)data+="0";
    data += ano;
    
    return data;
    }
    
    private int dia;
    public void setDia(int dia){
          if(dia>31)     this.dia = dia % 31;
          else if(dia<0) this.dia = 0;
          else this.dia = dia;
    }   
    private int mes;
    public void setMes(int mes){
          if(mes>12){
              this.mes = mes % 12;}
          else if(mes<0) this.mes = 0;
          else this.mes = mes;
    }   
    private int ano;
    public void setAno(int ano){
          if(ano>=10000) this.ano = 9999;
          else this.ano = ano;
    }   
}
