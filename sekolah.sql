CREATE DATABASE sekolah;
USE sekolah;

-- public.siswa definition

-- Drop table

-- DROP TABLE public.siswa;

CREATE TABLE public.siswa (
	id serial4 NOT NULL,
	nama varchar(100) NOT NULL,
	umur int4 NULL,
	jurusan varchar(50) NULL,
	CONSTRAINT siswa_pkey PRIMARY KEY (id)
);

INSERT INTO public.siswa (nama,umur,jurusan) VALUES
	 ('Rere',16,'IPA'),
	 ('Bradi',16,'IPS'),
	 ('Rani',16,'IPS');

	 