CREATE TABLE residuo
(
residuo_id SERIAL PRIMARY KEY,
	nombre VARCHAR NOT NULL,
	material_id INTEGER NOT NULL,/* llave foranea*/
	descripcion TEXT,
	foto BYTEA /*para guardar archivos de imagen*/
);





