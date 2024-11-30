DROP DATABASE IF EXISTS datos;

CREATE DATABASE datos;

USE datos;

CREATE TABLE tipo_organizacion (
    id_tipo_org INT NOT NULL PRIMARY KEY,
    nom_tipo VARCHAR(50) NOT NULL
);

CREATE TABLE razon_social (
    id_razon_soc INT NOT NULL PRIMARY KEY,
    nom_razon_soc VARCHAR(15) NOT NULL
);

CREATE TABLE tipo_contribuyente (
    id_tipo_c INT NOT NULL PRIMARY KEY,
    nom_tipo_c VARCHAR(50) NOT NULL
);

CREATE TABLE pais (
    id_pais INT NOT NULL PRIMARY KEY,
    pais VARCHAR(50) NOT NULL
);

CREATE TABLE organizacion (
    id_org INT NOT NULL PRIMARY KEY,
    cod_org VARCHAR(10) NOT NULL,
    nom_org VARCHAR(70) NOT NULL,
    cuit VARCHAR(13) NOT NULL,
    id_tipo_org INT NOT NULL,
    id_razon_soc INT NOT NULL,
    id_tipo_c INT NOT NULL,
    id_pais INT NOT NULL,
    FOREIGN KEY (id_tipo_org) REFERENCES tipo_organizacion(id_tipo_org),
    FOREIGN KEY (id_razon_soc) REFERENCES razon_social(id_razon_soc),
    FOREIGN KEY (id_tipo_c) REFERENCES tipo_contribuyente(id_tipo_c),
    FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
);

CREATE TABLE contacto (
    id_contacto INT NOT NULL PRIMARY KEY,
    contacto VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    cod_tel VARCHAR(8) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    id_org INT NOT NULL,
    FOREIGN KEY (id_org) REFERENCES organizacion(id_org)
);

CREATE TABLE tipo_donante (
    id_tipo_d INT NOT NULL PRIMARY KEY,
    nom_tipo_d VARCHAR(200) NOT NULL
);

CREATE TABLE frecuencia (
    id_frec INT NOT NULL PRIMARY KEY,
    nom_frecuencia VARCHAR(50) NOT NULL
);

CREATE TABLE detalle_donante (
    id_detalle_d INT NOT NULL PRIMARY KEY,
    id_org INT NOT NULL,
    fecha_alta DATE NOT NULL,
    fecha_baja DATE,
    activo VARCHAR(2) NOT NULL,
    id_frec INT NOT NULL,
    id_tipo_d INT NOT NULL,
    FOREIGN KEY (id_org) REFERENCES organizacion(id_org),
    FOREIGN KEY (id_frec) REFERENCES frecuencia(id_frec),
    FOREIGN KEY (id_tipo_d) REFERENCES tipo_donante(id_tipo_d)
);

CREATE TABLE categoria_proveedor (
    id_categoria INT NOT NULL PRIMARY KEY,
    nom_categoria VARCHAR(50) NOT NULL
);

CREATE TABLE detalle_proveedor (
    id_detalle_p INT NOT NULL PRIMARY KEY,
    id_org INT NOT NULL,
    id_categoria INT NOT NULL,
    ciudad VARCHAR(70) NOT NULL,
    cod_prov VARCHAR(10) NOT NULL,
    provincia VARCHAR(70) NOT NULL,
    FOREIGN KEY (id_org) REFERENCES organizacion(id_org),
    FOREIGN KEY (id_categoria) REFERENCES categoria_proveedor(id_categoria)
);

CREATE TABLE tipo_cuenta (
    id_tipo_cta INT NOT NULL PRIMARY KEY,
    nom_tipo_cta VARCHAR(50) NOT NULL
);

CREATE TABLE cuenta (
    id_cta INT NOT NULL PRIMARY KEY,
    nro_cta INT NOT NULL,
    nom_cta VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200) NOT NULL,
    id_tipo_cta INT NOT NULL,
    FOREIGN KEY (id_tipo_cta) REFERENCES tipo_cuenta(id_tipo_cta)
);

CREATE TABLE movimiento (
    id_org INT NOT NULL,
    id_cta INT NOT NULL,
    fecha_mov DATE NOT NULL,
    importe FLOAT NOT NULL,
    observaciones VARCHAR(300),
    PRIMARY KEY (id_org, id_cta, fecha_mov),
    FOREIGN KEY (id_org) REFERENCES organizacion(id_org),
    FOREIGN KEY (id_cta) REFERENCES cuenta(id_cta)
);


