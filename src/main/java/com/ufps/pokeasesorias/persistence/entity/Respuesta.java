package com.ufps.pokeasesorias.persistence.entity;

import java.io.Serializable;

public class Respuesta implements Serializable {
    private Long id;
    private Mensaje mensajeAnterior;
    private Mensaje mensajeSiguiente;
}
