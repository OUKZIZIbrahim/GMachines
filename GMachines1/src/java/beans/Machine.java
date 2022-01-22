/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author ibrah
 */
import java.util.Date;

public class Machine {

    private int id;
    private String reference;
    private Date dateAchat;
    private double prix;
    private Marque marque;

     public Machine(String reference, Date dateAchat, double prix,Marque marque) {
        super();
        this.reference = reference;
        this.dateAchat = dateAchat;
        this.prix = prix;
        this.marque = marque;
    }
    
    public Machine(int id, String reference, Date dateAchat, double prix,Marque marque) {
        super();
        this.id = id;
        this.reference = reference;
        this.dateAchat = dateAchat;
        this.prix = prix;
        this.marque = marque;
    }

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getReference() {
        return reference;
    }

    public void setReference(String reference) {
        this.reference = reference;
    }

    public Date getDateAchat() {
        return dateAchat;
    }

    public void setDateAchat(Date dateAchat) {
        this.dateAchat = dateAchat;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

     public Marque getMarque() {
        return marque;
    }

    public void setMarque(Marque marque) {
        this.marque = marque;
    }
    @Override
    public String toString() {
        return "id: "+this.id + "ref;  " + this.reference;
    }

   

}
