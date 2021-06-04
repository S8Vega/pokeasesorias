package com.ufps.pokeasesorias.persistence.entity;

import java.io.Serializable;
import java.util.List;

public class Carrera implements Serializable {
    private Long id;
    private String nombre;
    private List<Estudiante> estudiantes;
}