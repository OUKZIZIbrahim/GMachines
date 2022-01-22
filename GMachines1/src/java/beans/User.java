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
public class User {
    private int id;
    private String nom;
    private String prenom;
    private String username;
    private String mdp;
    
    
    
    public User(int id, String nom, String prenom, String username, String mdp) {
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.username = username;
        this.mdp = mdp;
        
    }
    
    public User(String nom, String prenom, String username, String mdp) {
        this.nom = nom;
        this.prenom = prenom;
        this.username = username;
        this.mdp = mdp;
        
    }

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getMdp() {
        return mdp;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    

    

  
    
    

    @Override
    public String toString() {
        return "User{" + "username=" + username + '}';
    }
    
    
}
