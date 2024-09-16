package com.ventas.dao.roles;

import com.ventas.entity.Role;
import com.ventas.excepciones.MercaditoException;

public interface RolesDao {
	
	public void add(Role role) throws MercaditoException;
}
