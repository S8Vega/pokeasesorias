package com.ufps.pokeasesorias.persistence.entity;

import java.io.Serializable;
import java.util.Date;

public class Mensaje implements Serializable {
    private Long id;
    private String descripcion;
    private Estudiante remitente;
    private Estudiante receptor;
    private Date fechaEnvio;
    private Respuesta respuestaAnterior;
    private Respuesta respuestaSiguiente;
}
