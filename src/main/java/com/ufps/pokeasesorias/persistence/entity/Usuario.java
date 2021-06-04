package com.ufps.pokeasesorias.persistence.entity;

import java.io.Serializable;

public class Usuario implements Serializable {
    private Long id;
    private String nombre;
    private String apellido;
    private String alias;
    private String contrasena;
    private Rol rol;
}
