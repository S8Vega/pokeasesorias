package com.ufps.pokeasesorias.persistence.repository;

import com.ufps.pokeasesorias.persistence.entity.Habilidad;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HabilidadRepository extends CrudRepository<Habilidad, Long> {
}
