-- Se selecciona la base de datos donde queremos trabajar
USE datos;

-- Ingresamos los datos en la tabla tipo_organizacion
INSERT INTO tipo_organizacion(nom_tipo) VALUES ("Donante");
INSERT INTO tipo_organizacion(nom_tipo) VALUES ("Proveedor");

-- Ingresamos los datos en la tabla razon_social
INSERT INTO razon_social(nom_razon_soc) VALUES ("S.A.S");
INSERT INTO razon_social(nom_razon_soc) VALUES ("S.A");
INSERT INTO razon_social(nom_razon_soc) VALUES ("S.R.L");
INSERT INTO razon_social(nom_razon_soc) VALUES ("GOB");
INSERT INTO razon_social(nom_razon_soc) VALUES ("Cooperativa");
INSERT INTO razon_social(nom_razon_soc) VALUES ("ONG");

-- Ingresamos los datos en la tabla tipo_contribuyente
INSERT INTO tipo_contribuyente(nom_tipo_c) VALUES ("Responsable Inscripto");
INSERT INTO tipo_contribuyente(nom_tipo_c) VALUES ("Monotributista");
INSERT INTO tipo_contribuyente(nom_tipo_c) VALUES ("IVA Responsable");
INSERT INTO tipo_contribuyente(nom_tipo_c) VALUES ("Exento");
INSERT INTO tipo_contribuyente(nom_tipo_c) VALUES ("IVA Responsable Inscripto");

-- Ingresamos los datos en la tabla pais
INSERT INTO pais(pais) VALUES ("Argentina");
INSERT INTO pais(pais) VALUES ("Bolivia");
INSERT INTO pais(pais) VALUES ("Brasil");
INSERT INTO pais(pais) VALUES ("Chile");
INSERT INTO pais(pais) VALUES ("Colombia");
INSERT INTO pais(pais) VALUES ("Mexico");
INSERT INTO pais(pais) VALUES ("Paraguay");
INSERT INTO pais(pais) VALUES ("Perú");
INSERT INTO pais(pais) VALUES ("Uruguay");
INSERT INTO pais(pais) VALUES ("Venezuela");

-- Ingresamos los datos en la tabla tipo_donante
INSERT INTO tipo_donante(nom_tipo_d) VALUES ("Empresa");
INSERT INTO tipo_donante(nom_tipo_d) VALUES ("Estado");
INSERT INTO tipo_donante(nom_tipo_d) VALUES ("Campaña");
INSERT INTO tipo_donante(nom_tipo_d) VALUES ("ONG");
INSERT INTO tipo_donante(nom_tipo_d) VALUES ("Agroindustria");
INSERT INTO tipo_donante(nom_tipo_d) VALUES ("Tecnología");

-- Ingresamos los datos en la tabla frecuencia
INSERT INTO frecuencia(nom_frecuencia) VALUES ("Anual");
INSERT INTO frecuencia(nom_frecuencia) VALUES ("Bimestral");
INSERT INTO frecuencia(nom_frecuencia) VALUES ("Mensual");
INSERT INTO frecuencia(nom_frecuencia) VALUES ("Semestral");
INSERT INTO frecuencia(nom_frecuencia) VALUES ("Trimestral");

-- Ingresamos los datos en la tabla categoria_proveedor
INSERT INTO categoria_proveedor(nom_categoria) VALUES ("Servicios");
INSERT INTO categoria_proveedor(nom_categoria) VALUES ("Materiales");
INSERT INTO categoria_proveedor(nom_categoria) VALUES ("Agente Impositivo");
INSERT INTO categoria_proveedor(nom_categoria) VALUES ("Tecnología");
INSERT INTO categoria_proveedor(nom_categoria) VALUES ("Consultoría");
INSERT INTO categoria_proveedor(nom_categoria) VALUES ("Energía Renovable");
INSERT INTO categoria_proveedor(nom_categoria) VALUES ("Transporte");
INSERT INTO categoria_proveedor(nom_categoria) VALUES ("Construcción");
INSERT INTO categoria_proveedor(nom_categoria) VALUES ("Agroindustria");
INSERT INTO categoria_proveedor(nom_categoria) VALUES ("Software");
INSERT INTO categoria_proveedor(nom_categoria) VALUES ("Consultoría IT");
INSERT INTO categoria_proveedor(nom_categoria) VALUES ("Energía Eólica");
INSERT INTO categoria_proveedor(nom_categoria) VALUES ("Energía Solar");

-- Ingresamos los datos en la tabla tipo_cuenta
INSERT INTO tipo_cuenta(nom_tipo_cta) VALUES ("Otros activos corto plazo");
INSERT INTO tipo_cuenta(nom_tipo_cta) VALUES ("Otros pasivos corto plazo");
INSERT INTO tipo_cuenta(nom_tipo_cta) VALUES ("Patrimonio Neto");
INSERT INTO tipo_cuenta(nom_tipo_cta) VALUES ("Ingresos");
INSERT INTO tipo_cuenta(nom_tipo_cta) VALUES ("Gastos");
INSERT INTO tipo_cuenta(nom_tipo_cta) VALUES ("Resultados financieros netos");
