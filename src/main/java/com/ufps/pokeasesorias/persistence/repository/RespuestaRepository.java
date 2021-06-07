package com.ufps.pokeasesorias.persistence.repository;

import com.ufps.pokeasesorias.persistence.entity.Respuesta;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RespuestaRepository extends CrudRepository<Respuesta, Long> {
}
