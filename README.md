# Aplikasi Pencatat Menu Kantin

Tugas Ujian Tengah Semester (UTS) Mata kuliah Pemrograman Sistem Mobile.
Aplikasi Flutter untuk mencatat menu kantin: daftar menu, detail menu,
dan tambah menu, dengan navigasi memakai package `get` dan font dari
`google_fonts`.

## Identitas

| | |
|---|---|
| Nama | Hilal Ramdani |
| NIM | 3337240071 |
| Kelas | C |
| Mata kuliah | Pemrograman Sistem Mobile |
| Dosen pengampu | Royan Habibie Sukarna, S.Kom., M.Kom. |

## Fitur

| Soal | Bobot | Keterangan |
|---|---|---|
| 1. Custom widget teks | 20 poin | `AppText` (`lib/app/widgets/app_text.dart`): `StatelessWidget` reusable, parameter teks + ukuran, ketebalan, warna, dan varian display. Display memakai Space Grotesk, isi memakai Inter. |
| 2. Halaman daftar menu | 45 poin | `MenuListPage`: `StatefulWidget`, data `List<Menu>` (5 data awal), `ListView.builder` (nama di `title`, harga di `subtitle`), tap item buka detail via `Get.to()`, FAB buka tambah menu via `Get.to()`. Hasil tambah menu diterima lalu `setState`. |
| 3. Halaman tambah menu | 35 poin | `AddMenuPage`: `Form` berisi nama + harga. Keduanya wajib diisi, harga hanya angka dan harus lebih dari 0. Data valid dikirim balik via `Get.back(result: ...)`. |

Struktur widget halaman daftar dan tambah menu mengikuti diagram soal secara
tepat (urutan dan jenis node tidak diubah). Package `get` hanya dipakai untuk
navigasi: `GetMaterialApp`, `Get.to()`, `Get.back()`. Halaman detail
Struktur bebas dan bisa kembali ke daftar.

## Struktur Folder

```
lib/
├── main.dart                  # GetMaterialApp + theme
├── app/
│   ├── theme/
│   │   ├── app_colors.dart    # Palet soft dark mode + aksen sage mint
│   │   └── app_theme.dart     # ThemeData (AppBar, Card, Input, Button, FAB)
│   └── widgets/
│       └── app_text.dart      # Custom widget teks (Soal 1)
├── data/
│   └── initial_menus.dart     # 5 data menu awal
├── models/
│   └── menu.dart              # Model Menu { nama, harga }
├── utils/
│   ├── formatters.dart        # formatRp(): 15000 -> "Rp 15.000"
│   └── validators.dart        # Validasi nama & harga
└── pages/
    ├── menu_list_page.dart    # Soal 2
    ├── menu_detail_page.dart  # Detail menu
    └── add_menu_page.dart     # Soal 3
```
## Desain

- **Tema:** soft dark mode yang minimalist dengan latar netral monokrom dengan satu
  aksen sage mint (`#9DC5A8`) pada FAB, harga, dan tombol.
- **Font:** Space Grotesk untuk display (judul, nama menu, tombol) dan Inter
  untuk teks isi (harga, label). Dipilih karena preferensi pribadi terutama pada Space Grotesk.


## Dependensi Utama

- `get`: navigasi (`GetMaterialApp`, `Get.to()`, `Get.back()`)
- `google_fonts`: font Space Grotesk & Inter
