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

-- public.nilai definition

-- Drop table

-- DROP TABLE public.nilai;

CREATE TABLE public.nilai (
	id serial4 NOT NULL,
	siswa_id int4 NULL,
	mata_pelajaran varchar(50) NULL,
	nilai int4 NULL,
	CONSTRAINT nilai_pkey PRIMARY KEY (id)
);


-- public.nilai foreign keys

ALTER TABLE public.nilai ADD CONSTRAINT nilai_siswa_id_fkey FOREIGN KEY (siswa_id) REFERENCES public.siswa(id);

INSERT INTO public.nilai (siswa_id,mata_pelajaran,nilai) VALUES
	 (1,'Fisika',82),
	 (2,'Bahasa Inggris',90),
	 (3,'Sejarah',100);