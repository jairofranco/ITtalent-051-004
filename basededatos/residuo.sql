CREATE TABLE residuo
(
residuo_id SERIAL PRIMARY KEY,
	nombre VARCHAR NOT NULL,
	material_id INTEGER NOT NULL,
	descripcion TEXT,
	foto BYTEA
);





