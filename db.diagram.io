
// Creating tables
Table Untirta {
  id init [pk, increment] // auto-increment
  Fakultas varchar
  Jurusan varchar
  Dosen varchar
  Tendik varchar
  Mahasiswa varchar
  Photo blob
  Fasilitas varchar
  created_at timestamp
}

Table FakultasdiUntirta {
  kode_Fakultas int [pk]
  jumlah_Fakultas int
  nama_Fakultas varchar
 }
 
Table JurusandiUntirta {
  kode_Jurusan int [pk]
  jumlah_Jurusan int
  nama_Jurusan varchar
  nama_KepalaJurusan varchar
  foto_KepalaJurusan blob
  jumlah_DosenJurusan int
  nama_DosenJurusan varchar
  foto_DosenJurusan blob
 }

// Creating references
// You can also define relaionship separately
// > many-to-one; < one-to-many; - one-to-one; <> many-to-many
Ref: Untirta.Fakultas > FakultasdiUntirta.kode_Fakultas
Ref: Untirta.Jurusan > JurusandiUntirta.kode_Jurusan

//----------------------------------------------//

//// -- LEVEL 2
//// -- Adding column settings
// Creating tables
Table Dosen {
  id init [pk, increment] // auto-increment
  NIP int
  Nama varchar
  kode_kotakabupaten int
  TempatLahir varchar
  TanggalLahir date
  Alamat text
  Email text
  Photo blob
  Fakultas varchar
  Prodi varchar
  created_at timestamp
}

Table NIP {
  kode_NIP int [pk]
  nomorNIP varchar
}

Table kotakabupaten {
  kode_kotakabupaten int [pk]
  nama_kotakabupaten varchar
 }

// Creating references
// You can also define relaionship separately
// > many-to-one; < one-to-many; - one-to-one; <> many-to-many
Ref: Dosen.NIP > NIP.kode_NIP
Ref: Dosen.kode_kotakabupaten > kotakabupaten.kode_kotakabupaten

//----------------------------------------------//

//// -- LEVEL 3
//// -- Adding column settings
// Creating tables
Table Tendik {
  id init [pk, increment] // auto-increment
  NIPTendik int
  Nama varchar
  code_kotakabupaten int
  TempatLahir varchar
  TanggalLahir date
  Alamat text
  Email text
  Photo blob
  Unit varchar
  created_at timestamp
}

Table NIPTendik {
  kode_NIPTendik int [pk]
  nomorNIP varchar
}

Table kotaataukabupaten {
  kode_kotakabupaten int [pk]
  nama_kotakabupaten varchar
 }

// Creating references
// You can also define relaionship separately
// > many-to-one; < one-to-many; - one-to-one; <> many-to-many
Ref: Tendik.NIPTendik > NIPTendik.kode_NIPTendik
Ref: Tendik.code_kotakabupaten > kotaataukabupaten.kode_kotakabupaten

//----------------------------------------------//

//// -- LEVEL 4
//// -- Adding column settings
// Creating tables
Table Mahasiswa {
  id init [pk, increment] // auto-increment
  NIM int
  Nama varchar
  kotakabupaten_kode int
  TempatLahir varchar
  TanggalLahir date
  Alamat text
  Email text
  Photo blob
  Fakultas varchar
  Prodi varchar
  created_at timestamp
}

Table NIM {
  kode_NIM int [pk]
  nomorNIM varchar
}

Table pilihkotakabupaten {
  kotakabupaten_kode int [pk]
  nama_kotakabupaten varchar
 }

// Creating references
// You can also define relaionship separately
// > many-to-one; < one-to-many; - one-to-one; <> many-to-many
Ref: Mahasiswa.NIM > NIM.kode_NIM
Ref: Mahasiswa.kotakabupaten_kode > pilihkotakabupaten.kotakabupaten_kode

Ref: "kotaataukabupaten"."kode_kotakabupaten" < "kotaataukabupaten"."nama_kotakabupaten"