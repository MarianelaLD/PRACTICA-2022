
--------------------------------------------------------------------------------
-- direccion "nula"
--------------------------------------------------------------------------------
INSERT INTO crowdsourcing.region(idregion, nombreRegion) VALUES (0, ' Sin Region');
INSERT INTO crowdsourcing.comuna(idcomuna, nombreComuna, region_idregion) VALUES (0, ' Sin Comuna', 0);
INSERT INTO crowdsourcing.calle(idcalle, nombreCalle, comuna_idcomuna, region_idregion) VALUES (0, ' Sin Calle', 0,0);
INSERT INTO crowdsourcing.direccion(iddireccion, calle_idcalle, numero, comuna_idcomuna, region_idregion) VALUES (0, 0, 0, 0, 0);

--------------------------------------------------------------------------------
-- informantes
--------------------------------------------------------------------------------
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (187543010, 0, 'Sara Ramona', 'Gonzalez Santa Cruz');
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (98784217, 0, 'Rosa Paula', 'Perez Lopez');
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (152172516, 0, 'Paula Daniela', 'Ruiz Reyes');
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (91863529, 0, 'Sandra Sara', 'Baeza Herrera');
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (140348619, 0, 'Paula Daniela', 'Gonzalez Martinez');
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (216922174, 0, 'Ana Daniela', 'Ruiz Baeza');
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (76234159, 0, 'Maria Rosa', 'Baeza Perez');
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (130583210, 0, 'Carla Maria', 'Gonzalez Santa Cruz');
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (70338327, 0, 'Rosa Paula', 'Baeza Lopez');
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (126838018, 0, 'Daniela Paula', 'Garcia Reyes');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (187543010, '524GonzalezSantaCruz', 'informante', '758SaraRamona');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (98784217, '820PerezLopez', 'informante', '772RosaPaula');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (152172516, '240RuizReyes', 'informante', '631PaulaDaniela');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (91863529, '821BaezaHerrera', 'informante', '936SandraSara');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (140348619, '19GonzalezMartinez', 'informante', '985PaulaDaniela');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (216922174, '96RuizBaeza', 'informante', '453AnaDaniela');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (76234159, '498BaezaPerez', 'informante', '89MariaRosa');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (130583210, '624GonzalezSantaCruz', 'informante', '815CarlaMaria');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (70338327, '700BaezaLopez', 'informante', '736RosaPaula');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (126838018, '221GarciaReyes', 'informante', '838DanielaPaula');


--------------------------------------------------------------------------------
-- admin
--------------------------------------------------------------------------------
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (199167286, 0, 'Admi', 'Nistrador');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (199167286, 'admin', 'admin', 'Administrador');
INSERT INTO crowdsourcing.admin(usuario_persona_rut) VALUES (199167286);


--------------------------------------------------------------------------------
-- institucion
--------------------------------------------------------------------------------
INSERT INTO crowdsourcing.institucion (idinstitucion, direccion_iddireccion, nombreinstitucion, tipoinstitucion)
values (0, 0, 'Institucion', 'ONG');


--------------------------------------------------------------------------------
-- proyecto
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- verificador
--------------------------------------------------------------------------------
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (200226780, 0, 'Veri', 'Ficador');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (200226780, 'verificador', 'verificador', 'Verificador');
