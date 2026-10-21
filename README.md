<div align="center">

# 🚀 Crashtix — Setara App

### Aplikasi mobile berbasis Flutter untuk pengalaman digital yang inklusif

![Flutter](https://img.shields.io/badge/Flutter-Framework-02569B?logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-Language-0175C2?logo=dart&logoColor=white)
![Status](https://img.shields.io/badge/Status-Development-orange)

**Crashtix** adalah proyek aplikasi mobile yang dikembangkan menggunakan Flutter. Repository ini berisi implementasi awal antarmuka, navigasi, serta contoh fitur aplikasi.

</div>

---

## 📌 Daftar Isi

- [Tentang Proyek](#-tentang-proyek)
- [Fitur Saat Ini](#-fitur-saat-ini)
- [Teknologi](#-teknologi)
- [Struktur Proyek](#-struktur-proyek)
- [Cara Menjalankan](#-cara-menjalankan)
- [Alur Aplikasi](#-alur-aplikasi)
- [Tim dan Pembagian Tugas](#-tim-dan-pembagian-tugas)
- [Catatan Pengembangan](#-catatan-pengembangan)
- [Kontribusi](#-kontribusi)

## 🎯 Tentang Proyek

Crashtix merupakan proyek pengembangan aplikasi mobile untuk latihan perancangan dan implementasi aplikasi menggunakan Flutter. Konsep antarmuka **Setara** menonjolkan aksesibilitas, kesempatan kerja, pembelajaran singkat, dan komunitas yang saling mendukung.

> **Catatan:** Versi kode saat ini merupakan prototipe UI. Autentikasi, penyimpanan data, dan integrasi backend belum diimplementasikan.

## ✨ Fitur Saat Ini

| Halaman | Deskripsi |
|---|---|
| Splash Screen | Halaman pembuka dengan identitas Setara dan tombol mulai. |
| Welcome | Pengantar singkat mengenai tujuan aplikasi. |
| Login | Form email/nomor HP dan password sebagai simulasi tampilan masuk. |
| Beranda | Sapaan pengguna, kolom pencarian, akses cepat, dan contoh lowongan. |
| Lowongan | Daftar contoh pekerjaan dan filter visual sederhana. |
| Detail Lowongan | Informasi singkat pekerjaan dan tombol simulasi melamar. |
| Aksesibilitas | Contoh pengaturan pembaca layar, ukuran teks, caption, dan kontras. |
| Micro-Learning | Daftar materi belajar singkat dan halaman detail materi. |
| Forum Komunitas | Contoh postingan komunitas dan halaman membuat postingan. |
| Profil | Ringkasan profil dan menu menuju fitur terkait. |

## 🧰 Teknologi

- **Flutter** — framework untuk membangun antarmuka aplikasi lintas platform.
- **Dart** — bahasa pemrograman yang digunakan oleh Flutter.
- **Material Design** — komponen UI dasar seperti tombol, kartu, dan navigasi.
- **Flutter Test** — untuk pengujian widget dasar.

## 📁 Struktur Proyek

Struktur inti yang digunakan:

```text
setara_app/
├── lib/
│   └── main.dart          # UI, komponen, halaman, dan navigasi prototipe
├── test/
│   └── widget_test.dart   # Pengujian widget aplikasi
├── android/               # Konfigurasi platform Android
├── ios/                   # Konfigurasi platform iOS (jika diperlukan)
├── pubspec.yaml            # Konfigurasi project dan dependency
└── README.md               # Dokumentasi proyek
```

Beberapa folder platform lain dapat dibuat otomatis oleh Flutter, bergantung pada target platform yang dipilih saat membuat proyek.

## ▶️ Cara Menjalankan

### 1. Persiapan

Pastikan perangkat pengembangan sudah memiliki:

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Dart SDK](https://dart.dev/get-dart) (biasanya sudah termasuk dalam Flutter SDK)
- Android Studio atau Visual Studio Code
- Emulator Android atau perangkat yang mengaktifkan USB debugging

Periksa instalasi Flutter:

```bash
flutter doctor
```

### 2. Buka proyek

Jika proyek sudah diunggah ke GitHub:

```bash
git clone <URL_REPOSITORY>
cd setara_app
```

Ganti `<URL_REPOSITORY>` dengan URL repository yang sebenarnya. Jika proyek sudah ada di komputer, buka folder proyek tersebut di VS Code.

### 3. Pasang dependency

```bash
flutter pub get
```

### 4. Jalankan aplikasi

```bash
flutter run
```

Untuk melihat perangkat yang tersedia:

```bash
flutter devices
```

### 5. Jalankan pengujian

```bash
flutter test
```

Pastikan `test/widget_test.dart` sudah disesuaikan dengan widget aplikasi Setara, bukan lagi test bawaan Flutter Counter.

## 🧭 Alur Aplikasi

```text
Splash Screen
     │
     ▼
Welcome Page
     │
     ▼
Login (simulasi)
     │
     ▼
Beranda
 ┌───┼────────┬──────────┐
 ▼   ▼        ▼          ▼
Lowongan  Belajar    Forum     Profil
   │                            │
   ▼                            ▼
Detail Lowongan          Aksesibilitas
```

Diagram tersebut menggambarkan alur utama prototipe. Beberapa halaman juga dapat dibuka melalui navigasi bawah.

## 👥 Tim dan Pembagian Tugas

Pembagian berikut mengikuti rancangan tugas proyek:

| Anggota | Subbagian | Tanggung Jawab |
|---|---|---|
| **Saravanan** | Backend / Flutter Setup & Code | Menyiapkan proyek Flutter, struktur awal, implementasi kode, navigasi, dan perbaikan bug. |
| **Rega Rivalga Wijaya** | User Experience (UX) | Riset kebutuhan pengguna, referensi UX, user flow, serta evaluasi kemudahan penggunaan. |
| **Farrel Bintang Safaringga** | UI/UX & Algoritma | Membuat wireframe, sketsa halaman, rancangan navigasi, dan alur logika aplikasi. |
| **Frendy Finalie** | Idea Concept & Design Reference | Menyusun konsep, ide fitur, referensi desain, dan evaluasi rancangan aplikasi. |

*Pembagian di atas merupakan ringkasan berdasarkan rencana tugas kelompok dan dapat disesuaikan dengan pekerjaan aktual setiap anggota.*

## 🛠️ Catatan Pengembangan

Versi saat ini masih berupa prototipe. Hal-hal berikut dapat dikembangkan pada tahap selanjutnya:

- [ ] Menyempurnakan tampilan agar sesuai dengan desain UI final.
- [ ] Memecah `main.dart` menjadi file halaman dan widget terpisah.
- [ ] Menghubungkan login dengan autentikasi sungguhan.
- [ ] Menyimpan profil, lowongan, dan postingan ke backend/database.
- [ ] Mengimplementasikan pencarian dan filter lowongan.
- [ ] Membuat fitur lamaran pekerjaan yang benar-benar berfungsi.
- [ ] Memastikan pengaturan aksesibilitas diterapkan secara konsisten.
- [ ] Menambahkan pengujian widget untuk halaman utama.
- [ ] Menambahkan dokumentasi screenshot aplikasi.

## 🤝 Kontribusi

Kontribusi anggota tim dapat dilakukan melalui alur berikut:

1. Buat branch untuk pekerjaan yang akan dilakukan.
2. Implementasikan perubahan sesuai pembagian tugas.
3. Jalankan `flutter analyze` dan `flutter test`.
4. Periksa perubahan sebelum membuat pull request.
5. Jelaskan fitur atau perbaikan yang ditambahkan.

```bash
flutter analyze
flutter test
```

## 📄 Lisensi

Proyek ini dibuat untuk kebutuhan pembelajaran dan tugas proyek kelompok. Informasi lisensi dapat ditambahkan sesuai kesepakatan tim.

---

<div align="center">

**Dibuat dengan Flutter 💙**  
*Crashtix — Setara App*

</div>
