
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
VALUES (187543010, 0, "Ana Rosa", "Garcia Martinez");
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (98784217, 0, "Sonia Maria", "Perez Santa Cruz");
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (152172516, 0, "Maria Daniela", "Perez Baeza");
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (91863529, 0, "Paula Carla", "Lara Reyes");
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (140348619, 0, "Maria Paula", "Baeza Herrera");
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (216922174, 0, "Rosa Sonia", "Ruiz Gonzalez");
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (76234159, 0, "Sandra Paula", "Lopez Herrera");
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (130583210, 0, "Daniela Rosa", "Ruiz Santa Cruz");
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (70338327, 0, "Sofia Sara", "Ruiz Santa Cruz");
INSERT INTO crowdsourcing.persona (rut, direccion_iddireccion, nombrepersona, apellidopersona)
VALUES (126838018, 0, "Sara Juana", "Martinez Reyes");
