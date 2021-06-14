package com.ufps.pokeasesorias.domain.service;

import com.ufps.pokeasesorias.persistence.dao.UsuarioDao;
import com.ufps.pokeasesorias.persistence.entity.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("UsuarioServiceImpl")
public class UsuarioServiceImpl implements UsuarioServiceInterface {

    @Autowired
    private UsuarioDao usuarioDao;

    @Transactional(readOnly = true)
    @Override
    public Usuario findById(Long id) {
        return usuarioDao.findById(id).orElse(null);
    }

    @Transactional(readOnly = true)
    @Override
    public List<Usuario> findAll() {
        return (List<Usuario>) usuarioDao.findAll();
    }

    @Transactional
    @Override
    public Usuario save(Usuario usuario) {
        return usuarioDao.save(usuario);
    }

    @Transactional
    @Override
    public void deleteById(Long id) {
        usuarioDao.deleteById(id);
    }

    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        return usuarioDao.findByAlias(userName);
    }
}
