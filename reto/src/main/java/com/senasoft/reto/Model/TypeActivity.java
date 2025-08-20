package com.senasoft.reto.Model;

import jakarta.persistence.*;

@Entity
@Table(name = "type_activity")
public class TypeActivity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    // atributos

    private Long id_type;
    private String name;

    // metodos getter y setter

    public Long getId_type() {
        return id_type;
    }

    public void setId_type(Long id_type) {
        this.id_type = id_type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
