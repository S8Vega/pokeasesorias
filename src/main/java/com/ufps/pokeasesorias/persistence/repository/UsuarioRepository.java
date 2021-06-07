package com.ufps.pokeasesorias.persistence.repository;

import com.ufps.pokeasesorias.persistence.entity.Usuario;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioRepository extends CrudRepository<Usuario, Long> {
}
