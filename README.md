# Resep App

Aplikasi resep makanan berbasis Flutter yang menampilkan data dari TheMealDB API.
Dibuat untuk UTS Pemrograman Mobile (Praktikum Mobile Programming M).

## Deskripsi

Resep App membantu pengguna mencari resep makanan, melihat daftar bahan, dan
membaca cara memasaknya. Data diambil secara dinamis dari TheMealDB API.

## Fitur Utama

- Menampilkan daftar resep (gambar, nama, kategori, asal negara)
- Pencarian resep berdasarkan kata kunci (bahasa Inggris, contoh: chicken, beef, cake)
- Halaman detail: gambar, daftar bahan, dan cara memasak
- Penanganan kondisi loading, success, dan error dengan FutureBuilder
- Tombol "Coba Lagi" saat terjadi kesalahan koneksi
- Terjemahan resep ke Bahasa Indonesia (opsional, hanya di Android/iOS)

## Teknologi dan Package

- Flutter dan Dart
- [http](https://pub.dev/packages/http): mengirim permintaan HTTP ke API
- [google_mlkit_translation](https://pub.dev/packages/google_mlkit_translation): terjemahan teks di perangkat
- API: [TheMealDB](https://www.themealdb.com/api.php)

## Struktur Folder

lib/
- models/ : class model (meal.dart)
- services/ : pengambilan data API (meal_services.dart)
- screens/ : halaman aplikasi (home_screen.dart, detail_screen.dart)
- main.dart

## Cara Menjalankan

1. Pastikan Flutter SDK sudah terpasang
2. Clone repositori:
   git clone https://github.com/lailatulmaisurotulalauwaliyah-hub/utsresep_app.git
3. Masuk ke folder project: cd utsresep_app
4. Unduh dependensi: flutter pub get
5. Jalankan di emulator/HP Android: flutter run

Catatan: aplikasi membutuhkan koneksi internet.

## Pembuat

Nama: Lailatul Maisurotul Al Auwaliyah
NIM: 240605110003