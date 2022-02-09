CREATE TABLE public.usuario (
    rut  NOT NULL,
    fecha_registro  NOT NULL,
    ultimo_inicio  NOT NULL,
    esta_eliminado  NOT NULL,
    sesion_iniciada  NOT NULL,
    PRIMARY KEY (rut)
);


CREATE TABLE public.informante (
    rut_informante  NOT NULL,
    nombre_informante  NOT NULL,
    apellido_informante  NOT NULL,
    id_verificacion  UNIQUE NOT NULL,
    PRIMARY KEY (rut_informante)
);


CREATE TABLE public.administrador (
    id_administrador  NOT NULL,
    nombres_administrador  NOT NULL,
    apellidos_administrador  NOT NULL,
    PRIMARY KEY (id_administrador)
);


CREATE TABLE public.verificador (
    id_verificador  NOT NULL,
    PRIMARY KEY (id_verificador)
);


CREATE TABLE public.locacion (
);


CREATE TABLE public.entity1 (
);


CREATE TABLE public.entity2 (
);


CREATE TABLE public.entity3 (
);


CREATE TABLE public.entity4 (
);


CREATE TABLE public. (
);


CREATE TABLE public.region (
    id_region  NOT NULL,
    nombre_region  NOT NULL,
    PRIMARY KEY (id_region)
);


CREATE TABLE public.comuna (
    id_comuna  NOT NULL,
    nombre_comuna  NOT NULL,
    PRIMARY KEY (id_comuna)
);


CREATE TABLE public.calle (
    id_calle  NOT NULL,
    nombre_calle  NOT NULL,
    PRIMARY KEY (id_calle)
);


CREATE TABLE public.direccion (
    id_direccion  NOT NULL,
    numero_direccion  NOT NULL,
    PRIMARY KEY (id_direccion)
);


CREATE TABLE public.verificacion (
    id_verificacion  NOT NULL,
    estado_verificacion  NOT NULL,
    fecha_emision  NOT NULL,
    fecha_modificacion  NOT NULL,
    PRIMARY KEY (id_verificacion)
);


CREATE TABLE public.datos_verificables (
    rut_verificable  NOT NULL,
    nombre_verificable  NOT NULL,
    apellido_verificable  NOT NULL,
    id_direccion  NOT NULL,
    estado_civil  NOT NULL,
    estado_causa  NOT NULL,
    motivo  NOT NULL,
    cantidad_hijos  NOT NULL,
    ficha_judicial  NOT NULL,
    PRIMARY KEY (rut_verificable, id_direccion)
);

