CREATE TABLE "versiones"(
    "id_version" BIGINT NOT NULL,
    "nombre" VARCHAR(50) NOT NULL,
    "id_modelo" BIGINT NOT NULL
);
ALTER TABLE
    "versiones" ADD PRIMARY KEY("id_version");
CREATE TABLE "venta_extra"(
    "id_venta_extra" BIGINT NOT NULL,
    "precio" DECIMAL(10, 2) NOT NULL,
    "id_venta" BIGINT NOT NULL,
    "id_extra" BIGINT NOT NULL
);
ALTER TABLE
    "venta_extra" ADD PRIMARY KEY("id_venta_extra");
CREATE TABLE "equipamiento_serie"(
    "id_equipamiento" BIGINT NOT NULL,
    "descripcion" VARCHAR(100) NOT NULL,
    "id_version" BIGINT NOT NULL
);
ALTER TABLE
    "equipamiento_serie" ADD PRIMARY KEY("id_equipamiento");
CREATE TABLE "marca"(
    "id_marca" BIGINT NOT NULL,
    "nombre" VARCHAR(50) NOT NULL
);
ALTER TABLE
    "marca" ADD PRIMARY KEY("id_marca");
CREATE TABLE "servicio_oficial"(
    "id_servicio" BIGINT NOT NULL,
    "nombre" VARCHAR(50) NOT NULL,
    "domicilio" VARCHAR(100) NOT NULL,
    "cuit" CHAR(11) NOT NULL,
    "id_consecionario" BIGINT NOT NULL
);
ALTER TABLE
    "servicio_oficial" ADD PRIMARY KEY("id_servicio");
CREATE TABLE "modelo"(
    "id_modelo" BIGINT NOT NULL,
    "nombre" VARCHAR(50) NOT NULL,
    "id_marca" BIGINT NOT NULL
);
ALTER TABLE
    "modelo" ADD PRIMARY KEY("id_modelo");
CREATE TABLE "extra"(
    "id_extra" BIGINT NOT NULL,
    "descripcion" VARCHAR(100) NOT NULL,
    "precio" DECIMAL(10, 2) NOT NULL,
    "id_version" BIGINT NOT NULL
);
ALTER TABLE
    "extra" ADD PRIMARY KEY("id_extra");
CREATE TABLE "venta"(
    "id_venta" BIGINT NOT NULL,
    "fecha_entrega" DATE NOT NULL,
    "matricula" VARCHAR(20) NOT NULL,
    "fecha_venta" DATE NOT NULL,
    "precio" DECIMAL(10, 2) NOT NULL,
    "forma_pago" VARCHAR(20) NOT NULL,
    "id_automovil" BIGINT NOT NULL,
    "id_vendedor" BIGINT NOT NULL
);
ALTER TABLE
    "venta" ADD PRIMARY KEY("id_venta");
CREATE TABLE "consecionario"(
    "id_consecionario" BIGINT NOT NULL,
    "nombre" VARCHAR(50) NOT NULL,
    "direccion" VARCHAR(100) NOT NULL,
    "cuit" VARCHAR(11) NOT NULL
);
ALTER TABLE
    "consecionario" ADD PRIMARY KEY("id_consecionario");
CREATE TABLE "automovil"(
    "id_automovil" BIGINT NOT NULL,
    "precio" DECIMAL(10, 2) NOT NULL,
    "descuento" DECIMAL(5, 2) NOT NULL,
    "num_chasis" VARCHAR(10) NOT NULL,
    "stock" INTEGER NOT NULL,
    "potencia" INTEGER NOT NULL,
    "cilindrada" INTEGER NOT NULL,
    "color" VARCHAR(20) NOT NULL,
    "id_modelo" BIGINT NOT NULL,
    "id_vendedor" BIGINT NOT NULL
);
ALTER TABLE
    "automovil" ADD PRIMARY KEY("id_automovil");
CREATE TABLE "vendedor"(
    "id_vendedor" BIGINT NOT NULL,
    "nombre" VARCHAR(50) NOT NULL,
    "dni" VARCHAR(10) NOT NULL,
    "domicilio" VARCHAR(100) NOT NULL,
    "id_consecionario" BIGINT NOT NULL,
    "id_servicio" BIGINT NOT NULL
);
ALTER TABLE
    "vendedor" ADD PRIMARY KEY("id_vendedor");
ALTER TABLE
    "modelo" ADD CONSTRAINT "modelo_id_marca_foreign" FOREIGN KEY("id_marca") REFERENCES "marca"("id_marca");
ALTER TABLE
    "extra" ADD CONSTRAINT "extra_id_version_foreign" FOREIGN KEY("id_version") REFERENCES "versiones"("id_version");
ALTER TABLE
    "equipamiento_serie" ADD CONSTRAINT "equipamiento_serie_id_version_foreign" FOREIGN KEY("id_version") REFERENCES "versiones"("id_version");
ALTER TABLE
    "venta_extra" ADD CONSTRAINT "venta_extra_id_extra_foreign" FOREIGN KEY("id_extra") REFERENCES "extra"("id_extra");
ALTER TABLE
    "venta_extra" ADD CONSTRAINT "venta_extra_id_venta_foreign" FOREIGN KEY("id_venta") REFERENCES "venta"("id_venta");
ALTER TABLE
    "vendedor" ADD CONSTRAINT "vendedor_id_consecionario_foreign" FOREIGN KEY("id_consecionario") REFERENCES "consecionario"("id_consecionario");
ALTER TABLE
    "venta" ADD CONSTRAINT "venta_id_automovil_foreign" FOREIGN KEY("id_automovil") REFERENCES "automovil"("id_automovil");
ALTER TABLE
    "vendedor" ADD CONSTRAINT "vendedor_id_servicio_foreign" FOREIGN KEY("id_servicio") REFERENCES "servicio_oficial"("id_servicio");
ALTER TABLE
    "automovil" ADD CONSTRAINT "automovil_id_vendedor_foreign" FOREIGN KEY("id_vendedor") REFERENCES "vendedor"("id_vendedor");
ALTER TABLE
    "versiones" ADD CONSTRAINT "version_id_modelo_foreign" FOREIGN KEY("id_modelo") REFERENCES "modelo"("id_modelo");
ALTER TABLE
    "automovil" ADD CONSTRAINT "automovil_id_modelo_foreign" FOREIGN KEY("id_modelo") REFERENCES "modelo"("id_modelo");
ALTER TABLE
    "servicio_oficial" ADD CONSTRAINT "servicio_oficial_id_consecionario_foreign" FOREIGN KEY("id_consecionario") REFERENCES "consecionario"("id_consecionario");
ALTER TABLE
    "venta" ADD CONSTRAINT "venta_id_vendedor_foreign" FOREIGN KEY("id_vendedor") REFERENCES "vendedor"("id_vendedor");