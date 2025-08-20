package com.senasoft.reto.Model;

import jakarta.persistence.*;

import java.sql.Time;
import java.util.Date;


@Entity
@Table(name = "physical_activity")
public class PhysicalActivity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    // atributos

    private Long id_activity;
    private Date activity_date;
    private Time duration;
    private double distance_traveled;
    private double calories_burned;
    @OneToOne
    @JoinColumn(name = "id_type")
    private TypeActivity id_type;

    // metodos getter y setter


    public Date getActivity_date() {
        return activity_date;
    }

    public void setActivity_date(Date activity_date) {
        this.activity_date = activity_date;
    }

    public Long getId_activity() {
        return id_activity;
    }

    public void setId_activity(Long id_activity) {
        this.id_activity = id_activity;
    }

    public Time getDuration() {
        return duration;
    }

    public void setDuration(Time duration) {
        this.duration = duration;
    }

    public double getDistance_traveled() {
        return distance_traveled;
    }

    public void setDistance_traveled(double distance_traveled) {
        this.distance_traveled = distance_traveled;
    }

    public double getCalories_burned() {
        return calories_burned;
    }

    public void setCalories_burned(double calories_burned) {
        this.calories_burned = calories_burned;
    }

    public TypeActivity getId_type() {
        return id_type;
    }

    public void setId_type(TypeActivity id_type) {
        this.id_type = id_type;
    }
}
