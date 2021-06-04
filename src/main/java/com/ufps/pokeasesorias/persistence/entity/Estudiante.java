package com.ufps.pokeasesorias.persistence.entity;

import java.io.Serializable;
import java.util.List;

public class Estudiante extends Usuario implements Serializable {
    private String descripcion;
    private Integer semestre;
    private String codigo;
    private List<Habilidad> habilidades;
    private Carrera carrera;
    private List<Mensaje> mensajesEnviados;
    private List<Mensaje> mensajesRecibidos;
}
