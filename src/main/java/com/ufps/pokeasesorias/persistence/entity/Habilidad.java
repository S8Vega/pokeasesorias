package com.ufps.pokeasesorias.persistence.entity;

import java.io.Serializable;
import java.util.List;

public class Habilidad implements Serializable {
    private Long id;
    private String nombre;
    private List<Estudiante> estudiantes;
}
