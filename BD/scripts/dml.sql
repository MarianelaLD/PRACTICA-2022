
--------------------------------------------------------------------------------
-- direccion "nula"
--------------------------------------------------------------------------------
INSERT INTO crowdsourcing.region(idregion, nombreRegion) VALUES (0, ' Sin Region');
INSERT INTO crowdsourcing.comuna(idcomuna, nombreComuna, region_idregion) VALUES (0, ' Sin Comuna', 0);
INSERT INTO crowdsourcing.calle(idcalle, nombreCalle, comuna_idcomuna, region_idregion) VALUES (0, ' Sin Calle', 0,0);
INSERT INTO crowdsourcing.direccion(iddireccion, calle_idcalle, numero, comuna_idcomuna, region_idregion) VALUES (0, 0, 0, 0, 0);


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
VALUES (0, 0, 'Institucion', 'ONG');


--------------------------------------------------------------------------------
-- verificacion
--------------------------------------------------------------------------------
INSERT INTO crowdsourcing.verificacion (idverificacion, admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (0, 199167286, '2022-01-01', true);


--------------------------------------------------------------------------------
-- verificador
--------------------------------------------------------------------------------
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (200226780, 0, 'Veri', 'Ficador');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (200226780, 'verificador', 'verificador', 'Verificador');
INSERT INTO crowdsourcing.verificador(usuario_persona_rut, institucion_idinstitucion, verificacion_idverificacion) VALUES (200226780,0,0);


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
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (1,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (187543010,1,'Tecnico Incompleta', 'Viuda', 'En curso');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (2,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (98784217,2,'Postgrado', 'Soltera', 'En curso');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (3,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (152172516,3,'Media', 'Casada', 'Finalizado');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (4,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (91863529,4,'Media Incompleta', 'Casada', 'En curso');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (5,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (140348619,5,'Postgrado Incompleta', 'Soltera', 'Finalizado');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (6,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (216922174,6,'Tecnico', 'Divorciada', 'Finalizado');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (7,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (76234159,7,'Universitario Incompleta', 'Viuda', 'En curso');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (8,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (130583210,8,'Media', 'Casada', 'Finalizado');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (9,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (70338327,9,'Media Incompleta', 'Divorciada', 'En curso');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (10,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (126838018,10,'Basica Incompleta', 'Union Civil', 'Finalizado');

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--custodia
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--custodia y carga 
--------------------------------------------------------------------------------
--1
---custodia
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona) 
VALUES (137331527, 0, 'Juan Alberto', 'Perez Moya');
INSERT INTO crowdsourcing.custodia(persona_rut, relacioninformante) 
VALUES (137331527, 'Pareja');
---carga
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (137543010, 0, 'Sandra', 'Gonzalez Santa Cruz');
INSERT INTO crowdsourcing.carga(persona_rut, informante_usuario_persona_rut,custodia_persona_rut,  relacioninformantecarga, edad, niveleducativo)
VALUES (137543010, 76234159 ,137331527, 'Hijo', '12', 'Basica Incompleta');
--2
---custodia
INSERT INTO crowdsourcing.persona(rut, direccion_iddireccion, nombrepersona, apellidopersona) 
VALUES (115275747, 0, 'Maria Elena', 'Ugarte Muñoz');
INSERT INTO crowdsourcing.custodia(persona_rut, relacioninformante) 
VALUES (115275747, 'Abuela');
---carga
INSERT INTO crowdsourcing.persona(rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (160971355, 0, 'Ramiro', 'Ramirez');
INSERT INTO crowdsourcing.carga(persona_rut, informante_usuario_persona_rut,custodia_persona_rut,  relacioninformantecarga, edad, niveleducativo)
VALUES (160971355, 216922174, 115275747, 'Hijo', '16', 'Basica Incompleta');
---carga
INSERT INTO crowdsourcing.persona(rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (226132406, 0, 'Ramira', 'Ramirez');
INSERT INTO crowdsourcing.carga(persona_rut, informante_usuario_persona_rut,custodia_persona_rut,  relacioninformantecarga, edad, niveleducativo)
VALUES (226132406, 216922174, 115275747, 'Hijo', '13', 'Basica Incompleta');
--3
---custodia
INSERT INTO crowdsourcing.persona(rut, direccion_iddireccion, nombrepersona, apellidopersona) 
VALUES (81049408, 0, 'Daniela', 'Garcia Reyes');
INSERT INTO crowdsourcing.custodia(persona_rut, relacioninformante) 
VALUES (81049408, 'Madre');
---carga
INSERT INTO crowdsourcing.persona(rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (249685372, 0, 'Muriel', 'Ahumada Garcia');
INSERT INTO crowdsourcing.carga(persona_rut, informante_usuario_persona_rut,custodia_persona_rut,  relacioninformantecarga, edad, niveleducativo)
VALUES (249685372, 91863529, 81049408, 'Hijo', '4', 'Preescolar');
--4
---custodia
INSERT INTO crowdsourcing.custodia(persona_rut, relacioninformante) 
VALUES (126838018, 'Misma Persona');
---carga
INSERT INTO crowdsourcing.persona(rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (243476577, 0, 'Maria', 'Gonzalez');
INSERT INTO crowdsourcing.carga(persona_rut, informante_usuario_persona_rut,custodia_persona_rut,  relacioninformantecarga, edad, niveleducativo)
VALUES (243476577, 126838018, 126838018, 'Madre', '89', 'Basica Incompleta');
--5
---custodia
INSERT INTO crowdsourcing.persona(rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES(116778483, 0, 'Saul', 'Caro');
INSERT INTO crowdsourcing.custodia(persona_rut, relacioninformante)
VALUES(116778483, 'Pareja');
---carga
INSERT INTO crowdsourcing.persona(rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES(239418384, 0, 'Mario', 'Gonzalez');
INSERT INTO crowdsourcing.carga(persona_rut, informante_usuario_persona_rut,custodia_persona_rut,  relacioninformantecarga, edad, niveleducativo)
VALUES(239418384, 70338327, 116778483, 'Hijo', '9', 'Basica Incompleta');
---carga
INSERT INTO crowdsourcing.persona(rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES(244776477, 0, 'Jordan', 'Gonzalez');
INSERT INTO crowdsourcing.carga(persona_rut, informante_usuario_persona_rut,custodia_persona_rut,  relacioninformantecarga, edad, niveleducativo)
VALUES(244776477, 70338327, 116778483, 'Hijo', '7', 'Basica Incompleta');
---carga
INSERT INTO crowdsourcing.persona(rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES(249424889, 0, 'Miriam', 'Gonzalez');
INSERT INTO crowdsourcing.carga(persona_rut, informante_usuario_persona_rut,custodia_persona_rut,  relacioninformantecarga, edad, niveleducativo)
VALUES(249424889, 70338327, 116778483, 'Hijo', '2', 'Preescolar');
--6
---custodia
INSERT INTO crowdsourcing.persona(rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES(153709157, 0, 'Merida', 'Alcazar');
INSERT INTO crowdsourcing.custodia(persona_rut, relacioninformante)
VALUES(153709157, 'Pareja');
---carga
INSERT INTO crowdsourcing.persona(rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES(210616306, 0, 'Miriam', 'Gonzalez');
INSERT INTO crowdsourcing.carga(persona_rut, informante_usuario_persona_rut,custodia_persona_rut,  relacioninformantecarga, edad, niveleducativo)
VALUES(210616306, 140348619, 153709157, 'Hijo', '21', 'Media Incompleta');
--7
---custodia
INSERT INTO crowdsourcing.custodia(persona_rut, relacioninformante)
VALUES(187543010, 'Misma Persona');
---carga
INSERT INTO crowdsourcing.persona(rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES(249258318, 0, 'Maria', 'Gonzalez');
INSERT INTO crowdsourcing.carga(persona_rut, informante_usuario_persona_rut,custodia_persona_rut,  relacioninformantecarga, edad, niveleducativo)
VALUES(249258318, 187543010, 187543010, 'Hijo', '9', 'Basica Incompleta');
--8
---custodia
INSERT INTO crowdsourcing.custodia(persona_rut, relacioninformante)
VALUES(130583210, 'Misma Persona');
---carga
INSERT INTO crowdsourcing.persona(rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES(230037884, 0, 'Celeste', 'Maldonado');
INSERT INTO crowdsourcing.carga(persona_rut, informante_usuario_persona_rut,custodia_persona_rut,  relacioninformantecarga, edad, niveleducativo)
VALUES(230037884, 130583210, 130583210, 'Hijo', '9', 'Basica Incompleta');

select * from crowdsourcing.informante join crowdsourcing.usuario on informante.usuario_persona_rut = usuario.persona_rut;