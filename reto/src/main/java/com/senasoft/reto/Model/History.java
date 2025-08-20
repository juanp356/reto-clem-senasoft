package com.senasoft.reto.Model;

import jakarta.persistence.*;

import java.sql.Date;

@Entity
@Table(name = "history")
public class History {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)


    // atributos

    private Long id_history;
    private Date date_history;
    @OneToMany
    @JoinColumn(name ="id_activity")
    private PhysicalActivity physicalActivity;  //  FK con actividad fisica
    @OneToMany
    @JoinColumn(name = "id_type")
    private TypeActivity typeActivity; // FK con tipo de actividad
    @OneToMany
    @JoinColumn(name = "id_users")  // FK con users
    private Users users;


    // metodos getter y setter

    public Long getId_history() {
        return id_history;
    }

    public void setId_history(Long id_history) {
        this.id_history = id_history;
    }

    public Date getDate_history() {
        return date_history;
    }

    public void setDate_history(Date date_history) {
        this.date_history = date_history;
    }

    public PhysicalActivity getPhysicalActivity() {
        return physicalActivity;
    }

    public void setPhysicalActivity(PhysicalActivity physicalActivity) {
        this.physicalActivity = physicalActivity;
    }

    public TypeActivity getTypeActivity() {
        return typeActivity;
    }

    public void setTypeActivity(TypeActivity typeActivity) {
        this.typeActivity = typeActivity;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }
}
