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
public class Horario {
    
    public Horario(){
    horas=0;
    minutos=0;
    segundos=0;
    }
    
    public int getHora(){
    return horas;
    }
    public int getMin(){
    return minutos;
    }
    public int getSeg(){
    return segundos;
    }
    
    
    public Horario(int horas, int minutos, int segundos){
    this.setTime(horas, minutos, segundos);
    }
    
    public void setTime(int horas, int minutos, int segundos){
    this.setHoras(horas);
    this.setMin(minutos);
    this.setSeg(segundos);
    }
    
    public String getTime(){
    String horario = "";
    
    if(horas<10)horario+="0";
    horario += horas+":";
    if(minutos<10)horario+="0";
    horario += minutos+":";
    if(segundos<10)horario+="0";
    horario += segundos;
    
    return horario;
    }
    
    private int horas;
    public void setHoras(int horas){
          if(horas>24)     this.horas = horas % 24;
          else if(horas<0) this.horas = 0;
          else this.horas = horas;
    }   
    private int minutos;
    public void setMin(int minutos){
          if(minutos>=60){
              this.minutos = minutos % 60;}
          else if(minutos<0) this.minutos = 0;
          else this.minutos = minutos;
    }   
    private int segundos;
    public void setSeg(int segundos){
          if(segundos>=60){
              this.segundos = segundos % 60;}
          else if(segundos<0) this.segundos = 0;
          else this.segundos = segundos;
    }   
}
