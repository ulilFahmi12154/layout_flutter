# 📱 Laporan Praktikum Pemrograman Mobile  
## Pertemuan: Layout dan Navigasi

---

## 👤 Identitas
- **Nama** : Muhammad Ulil Fahmi Ma'rifatulloh  
- **NIM** : 2341760194
- **Kelas** : SIB 3F 
- **Mata Kuliah** : Pemrograman Mobile  

---

## 📖 Tujuan Praktikum
1. Menerapkan jenis-jenis layout.
2. Menerapkan navigasi.
3. Menerapkan routing.   

---

## 🛠️ Alat dan Bahan
- **Hardware** : Laptop/PC dengan RAM minimal 8GB  
- **Software** :
  - Flutter SDK  
  - Android Studio / VS Code  
  - Emulator Android / Device Fisik  
- **Bahasa Pemrograman** : Dart  

---

## 📂 Langkah Praktikum
### Praktikum 1: Membangun Layout di Flutter
**Langkah 1:**
- Buat Project Baru

![build_layout](images/01_01.png)

**Langkah 2:**
- Buka file lib/main.dart

![build_layout](images/01_02.png)

**Langkah 3:**

**Identifikasi layout diagram**
- Identifikasi baris dan kolom.

  Struktur halaman dibangun menggunakan satu Column utama sebagai kerangka vertikal. Di dalamnya terdapat beberapa komponen:
  - Gambar utama ditempatkan di bagian paling atas sebagai satu widget terpisah.
  - Bagian judul disusun dalam sebuah Row yang terdiri dari:
    - Sebuah Column di sisi kiri berisi dua elemen teks.
    - Ikon berbentuk bintang di bagian tengah.
    - Teks angka “41” di sisi kanan.
  - Bagian tombol menggunakan Row yang memuat tiga Column, masing-masing berisi ikon dan teks di bawahnya.
  - Deskripsi panjang diletakkan di bagian bawah dalam sebuah Container yang berisi teks penjelasan.
- Apakah tata letaknya menyertakan kisi-kisi (grid)?
  - Tidak, tata letak halaman tidak memanfaatkan struktur kisi seperti GridView. Seluruh elemen ditata menggunakan perpaduan antara Column dan Row untuk menyusun konten secara vertikal dan horizontal.
- Apakah ada elemen yang tumpang tindih?
  - Tidak ada elemen yang saling menimpa satu sama lain, sehingga penggunaan Stack tidak diperlukan. Seluruh widget ditata secara linier, baik dalam arah vertikal maupun horizontal.
- Apakah UI memerlukan tab?
  - Antarmuka hanya mencakup satu layar sederhana tanpa fitur navigasi berbasis tab. Oleh karena itu, komponen seperti TabBar atau TabView tidak diperlukan dalam desain ini.
- Perhatikan area yang memerlukan alignment, padding, atau borders.
  - Alignment: Baris judul menggunakan pengaturan seperti MainAxisAlignment.spaceBetween agar ikon dan angka berada di posisi yang proporsional. Sementara itu, teks judul dalam Column diratakan ke kiri (start) untuk menjaga konsistensi tata letak.
  - Padding: Container yang memuat teks deskripsi diberi ruang dalam (padding) agar isi tidak menempel langsung ke sisi layar. Container pada bagian judul juga diberi padding di bagian bawah untuk menciptakan jarak dengan baris tombol di bawahnya.
  - Borders: Tidak ada garis pembatas (border) yang digunakan secara eksplisit. Sebagai gantinya, jarak antar elemen diatur melalui penggunaan padding dan spasi.


**Langkah 4:**
- Implementasi title row
![build_layout](images/01_04.png)

### Praktikum 2: Implementasi button row
**Langkah 1:**
- Buat method Column _buildButtonColumn
![button_row](images/02_01.png)

**Langkah 2:**
- Buat widget buttonSection
![button_row](images/02_02.png)

**Langkah 3:**
- Tambah button section ke body
![button_row](images/02_03.png)

### Praktikum 3: Implementasi text section
**Langkah 1:**
- Buat widget textSection
![text_section](images/03_01.png)

**Langkah 2:**
- Tambahkan variabel text section ke body
![text_section](images/03_02.png)

### Praktikum 4: Implementasi image section
**Langkah 1:**
- Siapkan aset gambar

![image_section](images/04_01.png)

**Langkah 2:**
- Tambahkan gambar ke body
![image_section](images/04_02.png)

**Langkah 3:**
- Terakhir, ubah menjadi ListView
![image_section](images/04_03.gif)

### Praktikum 5: Membangun Navigasi di Flutter  
**Langkah 1:**
- Siapkan project baru

![build_navigation](images/05_01.png)

**Langkah 2:**
- Mendefinisikan Route
![build_navigation](images/05_02.png)

**Langkah 3:**
- Lengkapi Kode di main.dart
![build_navigation](images/05_03.png)

**Langkah 4:**
- Membuat data model

![build_navigation](images/05_04.png)

**Langkah 5:**
- Lengkapi kode di class HomePage
![build_navigation](images/05_05.png)

**Langkah 6:**
- Membuat ListView dan itemBuilder
![build_navigation](images/05_06.png)

**Langkah 7:**
- Menambahkan aksi pada ListView
![build_navigation](images/05_07.png)

### Tugas Praktikum 2
**Nomor 1:**
- Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.

![navigator](images/tp_02_01.png)

**Nomor 2**
- Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya.

(https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments)

![itempage](images/tp_02_02.gif)

**Nomor 3**
- Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.

Menambahkan variabel harga, gambar, dan rating

![grid_view](images/tp_02_03_01.png)

Menambahkan assets 

![grid_view](images/tp_02_03_02.png)

Modifikasi home_page dan item_page

![grid_view](images/tp_02_03_03.gif)


**Nomor 4**
- Silakan implementasikan Hero widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini:

https://docs.flutter.dev/cookbook/navigation/hero-animations

![hero_widget](images/tp_02_03_04.gif)

**Nomor 5**
- Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.
![footer](images/tp_02_03_05.gif)

**Nomor 6**
- Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin go_router, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!


