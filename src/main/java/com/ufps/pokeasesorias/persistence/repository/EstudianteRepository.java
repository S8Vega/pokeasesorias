package com.ufps.pokeasesorias.persistence.repository;

import com.ufps.pokeasesorias.persistence.entity.Estudiante;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EstudianteRepository extends CrudRepository<Estudiante, Long> {
}
