CREATE TABLE siswa (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    umur INT,
    jurusan VARCHAR(50)
);

CREATE TABLE nilai (
    id SERIAL PRIMARY KEY,
    siswa_id INT REFERENCES siswa(id) ON DELETE CASCADE,
    mata_pelajaran VARCHAR(100),
    nilai INT
);

insert into siswa (nama, umur, jurusan)
values 
('Arimbi', 16, 'IPA'),
('Dito', 17, 'IPS'),
('Roro', 17, 'IPA'),
('Bagas', 16, 'IPS'),
('Jaki', 17, 'IPA');

insert into nilai (siswa_id,mata_pelajaran,nilai)
values 
(1, 'Matematika', 98),
(2, 'Bahasa Inggris', 88),
(3, 'Bahasa Indonesia', 85),
(4, 'Matematika', 82),
(5, 'Bahasa Inggris', 91);