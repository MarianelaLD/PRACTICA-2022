CREATE FUNCTION crowdsourcing.logear_usuario(_rut int, _contraseña text)
  RETURNS 
  LANGUAGE plpython3u
  AS $$
  BEGIN
    usuario_pre = plpy.prepare("SELECT * FROM crowdsourcing.USUARIO WHERE  = $1", ['rut']);
    usuario = plpy.execute(usuario_pre, [_rut]);
    agregar_login = plpy.prepare('INSERT INTO crowdsourcing."LOGIN" (USUARIO_PERSONA_rut, contraseñaLogin, fechaLogin
    VALUES ($1, $2, now());', [_rut, _contraseña])
  END;
$$
SELECT * FROM crowdsourcing."USUARIO";
CREATE FUNCTION crowdsourcing.logear_admin()
  RETURNS 
  LANGUAGE plpython3u
  AS $$
  BEGIN
    usuario= plpy.prepare(SELECT * FROM crowdsourcing."USUARIO" WHERE nombreUsuario = $1, ['nombreUsuario'])
    agregar_login = ply.prepare('INSERT INTO crowdsourcing."LOGIN" (USUARIO_PERSONA_rut, contraseñaLogin, fechaLogin) VALUES (_rut, $2, now());', ['USUARIO_PERSONA_rut', 'contraseñaLogin', 'fechaLogin']);
  END;
$$

CREATE FUNCTION crowdsourcing.logear_verificador(_rut int, _contraseña text)
  RETURNS 
  LANGUAGE plpython3u
  AS $$
  BEGIN
    usuario= plpy.prepare(SELECT * FROM crowdsourcing."USUARIO" WHERE nombreUsuario = $1, ['nombreUsuario']);
    INSERT INTO crowdsourcing."LOGIN" (USUARIO_PERSONA_rut, contraseñaLogin, fechaLogin) VALUES (_rut, $2, now());
  END;
$$

CREATE FUNCTION crowdsourcing.logear_informante(_rut int, _contraseña text)
  RETURNS 
  LANGUAGE plpython3u
  AS $$
  BEGIN
    usuario= plpy.prepare(SELECT * FROM crowdsourcing."USUARIO" WHERE nombreUsuario = $1, ['nombreUsuario']);
    INSERT INTO crowdsourcing."LOGIN" (USUARIO_PERSONA_rut, contraseñaLogin, fechaLogin) VALUES (_rut, $2, now());
  END;
$$

CREATE FUNCTION crowdsourcing.logear_admin(_rut int, _contraseña text)
  RETURNS 
  LANGUAGE plpython3u
  AS $$
  BEGIN
    usuario= plpy.prepare(SELECT * FROM crowdsourcing."USUARIO" WHERE nombreUsuario = $1, ['nombreUsuario']);
    INSERT INTO crowdsourcing."LOGIN" (USUARIO_PERSONA_rut, contraseñaLogin, fechaLogin) VALUES (_rut, $2, now());
  END;
$$

create or replace function crowdsourcing.pddesc(_rut int, _contraseña text)
    returns table(rut int, nombre text, apellido text, fechaRegistro date, nombreUsuario text, tipoUsuario text)
    as $$
        from pandas import Series
        from numpy import array
        data=Series(x)

        count=data.describe()[0]
        mean=data.describe()[1]
        std=data.describe()[2]
        min=data.describe()[3]

        ## print an INFO of the output:
        plpy.info(array([count, mean, std, min]).reshape(1,-1))

        return array([count, mean, std, min]).reshape(1,-1)
        ## or with the same result:
        # return hstack((count, mean, std, min)).reshape(1,-1)

$$ language plpython3u;
