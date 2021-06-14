package com.ufps.pokeasesorias.persistence.repository;

import com.ufps.pokeasesorias.persistence.entity.Mensaje;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MensajeRepository extends CrudRepository<Mensaje, Long> {
}
