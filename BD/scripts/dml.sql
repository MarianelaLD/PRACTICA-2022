
--------------------------------------------------------------------------------
-- direccion "nula"
--------------------------------------------------------------------------------
--1
INSERT INTO crowdsourcing.region(idregion, nombreRegion) VALUES (0, ' Sin Region');
INSERT INTO crowdsourcing.comuna(idcomuna, nombreComuna, region_idregion) VALUES (0, ' Sin Comuna', 0);
INSERT INTO crowdsourcing.calle(idcalle, nombreCalle, comuna_idcomuna, region_idregion) VALUES (0, ' Sin Calle', 0,0);
INSERT INTO crowdsourcing.direccion(iddireccion, calle_idcalle, numero, comuna_idcomuna, region_idregion) VALUES (0, 0, 0, 0, 0);


--------------------------------------------------------------------------------
-- admin
--------------------------------------------------------------------------------
--1
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (199167286, 0, 'Admi', 'Nistrador');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (199167286, 'admin', 'admin', 'Administrador');
INSERT INTO crowdsourcing.admin(usuario_persona_rut) VALUES (199167286);


--------------------------------------------------------------------------------
-- institucion
--------------------------------------------------------------------------------
--1
INSERT INTO crowdsourcing.institucion (idinstitucion, direccion_iddireccion, nombreinstitucion, tipoinstitucion)
VALUES (0, 0, 'Institucion', 'ONG');


--------------------------------------------------------------------------------
-- verificador
--------------------------------------------------------------------------------
--1
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (200226780, 0, 'Veri', 'Ficador');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (200226780, 'verificador', 'verificador', 'Verificador');
INSERT INTO crowdsourcing.verificacion (idverificacion, admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (0, 199167286, '2022-01-01', true);
INSERT INTO crowdsourcing.verificador(usuario_persona_rut, institucion_idinstitucion, verificacion_idverificacion) 
VALUES (200226780,0,0);


--------------------------------------------------------------------------------
-- informantes
--------------------------------------------------------------------------------
--1
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (187543010, 0, 'Sara Ramona', 'Gonzalez Santa Cruz');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (187543010, '524GonzalezSantaCruz', 'informante', '758SaraRamona');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (1,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (187543010,1,'Tecnico Incompleta', 'Viuda', 'En curso');
--2
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (98784217, 0, 'Rosa Paula', 'Perez Lopez');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (98784217, '820PerezLopez', 'informante', '772RosaPaula');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (2,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (98784217,2,'Postgrado', 'Soltera', 'En curso');
--3
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (152172516, 0, 'Paula Daniela', 'Ruiz Reyes');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (152172516, '240RuizReyes', 'informante', '631PaulaDaniela');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (3,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (152172516,3,'Media', 'Casada', 'Finalizado');
--4
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (91863529, 0, 'Sandra Sara', 'Baeza Herrera');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (91863529, '821BaezaHerrera', 'informante', '936SandraSara');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (4,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (91863529,4,'Media Incompleta', 'Casada', 'En curso');
--5
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (140348619, 0, 'Paula Daniela', 'Gonzalez Martinez');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (140348619, '19GonzalezMartinez', 'informante', '985PaulaDaniela');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (5,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (140348619,5,'Postgrado Incompleta', 'Soltera', 'Finalizado');
--6
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (216922174, 0, 'Ana Daniela', 'Ruiz Baeza');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (216922174, '96RuizBaeza', 'informante', '453AnaDaniela');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (6,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (216922174,6,'Tecnico', 'Divorciada', 'Finalizado');
--7
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (76234159, 0, 'Maria Rosa', 'Baeza Perez');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (76234159, '821BaezaPerez', 'informante', '876MariaRosa');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (7,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (76234159,7,'Universitario Incompleta', 'Viuda', 'En curso');

--8
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (130583210, 0, 'Carla Maria', 'Gonzalez Santa Cruz');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (130583210, '821GonzalezSantaCruz', 'informante', '876CarlaMaria');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (8,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (130583210,8,'Media', 'Casada', 'Finalizado');
--9
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (70338327, 0, 'Rosa Paula', 'Baeza Lopez');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (70338327, '700BaezaLopez', 'informante', '736RosaPaula');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (9,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (70338327,9,'Media Incompleta', 'Divorciada', 'En curso');
--10
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (126838018, 0, 'Daniela Paula', 'Garcia Reyes');
INSERT INTO crowdsourcing.usuario (persona_rut, contraseña, tipousuario, nombreusuario)
VALUES (126838018, '221GarciaReyes', 'informante', '838DanielaPaula');
INSERT INTO crowdsourcing.verificacion (idverificacion,admin_usuario_persona_rut, fechaemision, estadoverificacion)
VALUES (10,199167286, now(), false);
INSERT INTO crowdsourcing.informante (usuario_persona_rut,verificacion_idverificacion, niveleducacionalinformante, estadocivil, estadocausa)
VALUES (126838018,10,'Basica Incompleta', 'Union Civil', 'Finalizado');


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


------------------------------------------------------
-- condena y motivo
------------------------------------------------------
--1
INSERT INTO crowdsourcing.condena (idcondena, informante_usuario_persona_rut, fechainicio, duracion) 
VALUES (1,187543010,'2018-12-26',5);
INSERT INTO crowdsourcing.motivo (idmotivo, condena_idcondena, descripciondelito)
VALUES (1,1,'Robo');
--2
INSERT INTO crowdsourcing.condena (idcondena, informante_usuario_persona_rut, fechainicio, duracion)
VALUES (2,98784217,'2020-01-17',6);
INSERT INTO crowdsourcing.motivo (idmotivo, condena_idcondena, descripciondelito)
VALUES (2,2,'Delitos de la Ley de Drogas');
--3
INSERT INTO crowdsourcing.condena (idcondena, informante_usuario_persona_rut, fechainicio, duracion)
VALUES (3,152172516,'2020-11-08',3);
INSERT INTO crowdsourcing.motivo (idmotivo, condena_idcondena, descripciondelito)
VALUES (3,3,'Hurto');
--4
INSERT INTO crowdsourcing.condena (idcondena, informante_usuario_persona_rut, fechainicio, duracion)
VALUES (4,91863529,'2019-05-25',4);
INSERT INTO crowdsourcing.motivo (idmotivo, condena_idcondena, descripciondelito)
VALUES (4,4,'Robo');
--5
INSERT INTO crowdsourcing.condena (idcondena, informante_usuario_persona_rut, fechainicio, duracion)
VALUES (5,140348619,'2018-03-28',6);
INSERT INTO crowdsourcing.motivo (idmotivo, condena_idcondena, descripciondelito)
VALUES (5,5,'Robo');
INSERT INTO crowdsourcing.motivo (idmotivo, condena_idcondena, descripciondelito)
VALUES (13,5,'Desorden público');
--6
INSERT INTO crowdsourcing.condena (idcondena, informante_usuario_persona_rut, fechainicio, duracion)
VALUES (6,216922174,'2019-08-24',8);
INSERT INTO crowdsourcing.motivo (idmotivo, condena_idcondena, descripciondelito)
VALUES (6,6,'Homicidio');
INSERT INTO crowdsourcing.motivo(idmotivo, condena_idcondena, descripciondelito)
VALUES (11,6,'Robo');
--7
INSERT INTO crowdsourcing.condena (idcondena, informante_usuario_persona_rut, fechainicio, duracion)
VALUES (7,76234159,'2021-11-11',2);
INSERT INTO crowdsourcing.motivo (idmotivo, condena_idcondena, descripciondelito)
VALUES (7,7,'Robo');
--8
INSERT INTO crowdsourcing.condena (idcondena, informante_usuario_persona_rut, fechainicio, duracion)
VALUES (8,130583210,'2021-07-02',2);
INSERT INTO crowdsourcing.motivo (idmotivo, condena_idcondena, descripciondelito)
VALUES (8,8,'Delito de la Ley de Drogas');
--9
INSERT INTO crowdsourcing.condena (idcondena, informante_usuario_persona_rut, fechainicio, duracion)
VALUES (9,70338327,'2019-07-02',7);
INSERT INTO crowdsourcing.motivo (idmotivo, condena_idcondena, descripciondelito)
VALUES (9,9,'Homicidio');
INSERT INTO crowdsourcing.motivo(idmotivo, condena_idcondena, descripciondelito)
VALUES (12,9,'delito de la Ley de Drogas');
--10
INSERT INTO crowdsourcing.condena (idcondena, informante_usuario_persona_rut, fechainicio, duracion)
VALUES (10,126838018,'2020-01-29',4);
INSERT INTO crowdsourcing.motivo (idmotivo, condena_idcondena, descripciondelito)
VALUES (10,10,'Robo');