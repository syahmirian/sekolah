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