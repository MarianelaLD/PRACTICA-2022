-------------------------------------------------------------------------------
--- LISTO PARA USAR
-------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION crowdsourcing.insert_verificador(_rut INT, _nombre VARCHAR(45), _apellido VARCHAR(45), _institucion INT, _contraseña VARCHAR(45), _direccion INT, _nombreusuario VARCHAR (45))
RETURNS BOOL , VARCHAR(20)
AS $$

DECLARE
    _idverificacion INT;
    _tipousuario VARCHAR(11) := 'verificador';
BEGIN
  _rut = 987654321;
  BEGIN
    INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
    VALUES (_rut, _direccion, _nombre, _apellido);
    EXCEPTION 
    WHEN unique_violation THEN
      RETURN FALSE, 'rut';
    WHEN sqlstate '22001' THEN
      RETURN FALSE, 

  END;
  BEGIN
    INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
    VALUES (_rut, _contraseña, _tipousuario, _nombreusuario);
    EXCEPTION WHEN unique_violation THEN
        RETURN FALSE, 'nombre usuario';
  END;
  INSERT INTO crowdsourcing.verificacion (admin_usuario_persona_rut, fechaemision)
  VALUES (199167286, NOW())
  RETURNING idverificacion INTO _idverificacion;
  BEGIN
    INSERT INTO crowdsourcing.verificador(usuario_persona_rut, institucion_idinstitucion, verificacion_idverificacion) 
    VALUES (_rut,_institucion,_idverificacion);
    EXCEPTION WHEN unique_violation THEN
        RETURN FALSE, 'verificador';
  END;
  RETURN TRUE;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION crowdsourcing.validarRut()
RETURNS BOOL
AS $$
DECLARE
  _aux VARCHAR(20) := '11.111.111-1';
BEGIN
if (_aux ~ '(\d{1,3}(?:(.?)\d{3}){2}(-?)[\dkK])')
THEN
RAISE NOTICE 'Rut valido';
  RETURN TRUE;
else
RAISE NOTICE 'Rut invalido';
  RETURN FALSE;
END IF;
END;
$$ LANGUAGE plpgsql;
select * from crowdsourcing.validarRut();
SELECT * from regexp_matches('12.345.678-3','\b(\d{1,3}(?:(.?)\d{3}){2}(-?)[\dkK])\b', 'g' );

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