# mamio

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Naurah Iradya Kurniawan
2306245900
PBP-B

TUGAS 7

1) Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
   Jawab:
   StatelessWidget adalah widget yang tidak memiliki kebutuhan untuk mengelola state internal yang bisa berubah. Artinya, konfigurasi atau data yang digunakan oleh widget ini bersifat tetap dan tidak bisa diubah setelah widget diinisialisasi. Oleh karena itu, widget jenis ini sering digunakan untuk menampilkan elemen antarmuka yang sifatnya sederhana dan statis, seperti label teks, ikon, atau tombol yang tidak memerlukan perilaku atau interaksi dinamis dari pengguna. Karena tidak ada perubahan data atau kondisi yang terjadi, Flutter tidak perlu memperbarui tampilan untuk widget ini setelah pembuatan awal.
   
   Di sisi lain, StatefulWidget dirancang untuk situasi di mana sebuah widget perlu mengelola state atau kondisi yang dapat mengalami perubahan. Setiap StatefulWidget memiliki objek state yang terkait dengannya, yang memungkinkan pembaruan dan pengelolaan data secara internal. Dengan adanya state, widget ini bisa merespons interaksi pengguna atau memperbarui tampilannya berdasarkan perubahan data. Ketika ada perubahan dalam state, Flutter akan membangun ulang user interface dari widget tersebut untuk menampilkan data terbaru atau hasil dari interaksi pengguna. StatefulWidget sangat berguna untuk elemen antarmuka yang membutuhkan pembaruan dinamis, seperti form input, penggeser nilai, atau tombol dengan status tertentu yang berubah saat diklik.

2) Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
   Jawab:
   Berikut adalah beberapa widget yang saya gunakan untuk tugas kali ini:
   1. **MaterialApp** 
   MaterialApp adalah bagian inti dari MAMIO yang mengatur keseluruhan tampilan aplikasi. Jadi, setiap elemen dalam aplikasi mengikuti aturan desain yang konsisten, seperti warna dan tema. Di file `main.dart`, kita sudah set nama MAMIO, tema warnanya, dan halaman pertama yang muncul (`MyHomePage`). Ini membantu seluruh tampilan aplikasi terlihat rapi dan menyatu.
   
   2. **Scaffold** 
   Scaffold berfungsi sebagai rangka dasar halaman di MAMIO. Ini seperti kerangka yang memberi kita bagian utama halaman seperti `AppBar`, `body`, dan `floatingActionButton`. Di MAMIO, Scaffold dipakai di `MyHomePage` untuk membangun halaman utama yang punya bagian header, bagian utama untuk konten, dan tombol aksi tambahan. Dengan Scaffold, kita bisa lebih mudah membuat halaman yang teratur dan sesuai prinsip Material Design.
   
   3. **AppBar** 
   AppBar adalah bagian header di atas halaman yang menampilkan judul dan beberapa tombol. Di MAMIO, AppBar digunakan untuk menampilkan nama aplikasi, yaitu 'MAMIO,' dengan warna latar belakang yang sesuai tema utama. Dengan adanya AppBar, halaman terlihat lebih profesional, dan pengguna bisa langsung tahu di bagian mana mereka berada di aplikasi.
   
   4. **Padding** 
   Padding memberikan ruang kosong di sekitar widget. Ini kayak memberikan “jarak” untuk membuat konten terlihat lebih nyaman dan tidak terlalu penuh. Di MAMIO, Padding ditambahkan di sekitar `Column` pada `body`, memberi jarak di semua sisi sebesar 16 piksel. Ini membuat konten tampak lebih teratur dan nyaman dipandang.
   
   5. **Column** 
   Column adalah widget yang menampilkan konten dalam susunan vertikal, dari atas ke bawah. Di MAMIO, Column dipakai untuk menyusun `InfoCard`, `SizedBox`, dan teks sambutan di halaman utama. Juga, di `ItemCard`, Column membantu mengatur ikon dan teks aksi dalam satu susunan vertikal. Ini membuat halaman terlihat lebih rapi dan mudah dibaca.
   
   6. **Row** 
   Row digunakan untuk menata elemen dalam satu baris secara horizontal. Di MAMIO, Row dipakai untuk menampilkan tiga `InfoCard` (NPM, Nama, dan Kelas) secara berdampingan, sehingga informasi pengguna tampak sejajar dan rapi dalam satu baris.
   
   7. **InfoCard** 
   InfoCard adalah widget khusus yang dirancang untuk menampilkan data pengguna dalam bentuk kartu. `InfoCard` ini berisi informasi seperti NPM, nama, dan kelas dalam kotak yang terpisah dengan judul dan isinya. Dengan InfoCard, informasi pengguna bisa tampil dengan lebih menarik, terstruktur, dan mudah dipahami dalam satu tampilan.
   
   8. **SizedBox** 
   SizedBox adalah widget yang fungsinya menambahkan jarak tetap antar elemen. Di MAMIO, SizedBox memberikan ruang kosong antara `InfoCard` dan teks sambutan agar tidak terlalu dekat satu sama lain. Ini membantu membuat tampilan lebih proporsional dan mudah dipandang.
   
   9. **GridView** 
   GridView dipakai untuk menampilkan elemen dalam bentuk grid dengan baris dan kolom. Di MAMIO, GridView diatur menjadi tiga kolom untuk menampilkan beberapa `ItemCard`, seperti “Lihat Daftar Produk” dan “Logout.” GridView membuat tampilan lebih teratur dan memudahkan pengguna untuk melihat semua opsi dalam satu layar.
   
   10. **ItemCard** 
   ItemCard adalah widget khusus lain yang dibuat untuk menampilkan pilihan atau aksi pengguna dalam bentuk kartu kecil dengan ikon dan teks. Setiap ItemCard, seperti “Lihat Daftar Produk” atau “Logout,” terdiri dari ikon dan teks dalam satu susunan. Ini membuat tampilan lebih interaktif dan membantu pengguna memahami fungsi tiap pilihan.
   
   11. **Material** 
   Material adalah widget dasar yang menambahkan efek visual Material Design, seperti bayangan dan efek “splash.” Di `ItemCard`, Material menambahkan warna latar belakang pada kartu serta sudut-sudut yang melengkung, sehingga tampilan kartu lebih menarik dan memberikan pengalaman pengguna yang modern.
   
   12. **InkWell** 
   InkWell adalah widget yang memberikan efek “splash” saat widget di-tap atau disentuh, memberi umpan balik visual kepada pengguna. Di dalam ItemCard, InkWell membungkus kartu sehingga saat ditekan, muncul efek dan `SnackBar` yang memberi tahu aksi yang diklik. Ini membuat aplikasi lebih interaktif, seolah memberikan konfirmasi kepada pengguna bahwa aksi mereka diterima.
   
   13. **Icon** 
   Icon adalah widget untuk menampilkan simbol dari kumpulan ikon Material. Di `ItemCard`, Icon digunakan sebagai penanda untuk setiap aksi, seperti `Icons.cake` untuk “Lihat Daftar Produk.” Dengan Icon, pilihan di MAMIO menjadi lebih mudah dikenali dan dipahami secara visual.
   
   14. **Text** 
   Text adalah widget dasar untuk menampilkan teks. Di MAMIO, Text digunakan di banyak tempat, seperti judul di `AppBar`, informasi di `InfoCard`, dan deskripsi di `ItemCard`. Penggunaan Text membuat teks di aplikasi bisa tampil dengan seragam dan mudah dikustomisasi.
   
   Pada intinya, semua widget ini bekerja sama untuk membuat MAMIO terlihat interaktif, responsif, dan mudah digunakan, dengan tampilan yang rapi sesuai desain Material.

3) Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
   Jawab:
   Fungsi `setState()` digunakan dalam Flutter untuk memberi tahu framework bahwa ada perubahan pada state dari suatu widget. Saat state berubah, Flutter akan menjadwalkan pembuatan ulang (rebuild) pada bagian widget yang dipengaruhi perubahan tersebut. Proses ini memastikan bahwa tampilan tetap sinkron dengan data atau state yang baru, sehingga tampilan aplikasi selalu menampilkan informasi yang akurat.
   
   Perubahan yang terjadi dalam `setState()` akan berdampak pada variabel local state, yaitu variabel-variabel yang dideklarasikan dalam kelas `State`. Variabel-variabel ini secara langsung memengaruhi hasil yang ditampilkan oleh metode `build()`. Dengan kata lain, jika ada variabel yang diubah melalui `setState()`, Flutter akan mengidentifikasi bahwa metode `build()` perlu dipanggil kembali untuk memperbarui tampilan.
   
   Selain variabel local state, perubahan yang diakibatkan oleh `setState()` juga berdampak pada widget-widget yang bergantung pada nilai state. Widget-widget ini adalah komponen yang memiliki properti yang terkait dengan variabel state, dan jika nilai pada variabel tersebut berubah, maka widget tersebut juga akan diperbarui. Hal ini memastikan bahwa setiap elemen dalam tampilan yang tergantung pada state selalu diperbarui secara otomatis, menciptakan pengalaman pengguna yang lebih interaktif dan responsif.

4) Jelaskan perbedaan antara const dengan final.
   Jawab:
   Perbedaan utama antara `const` dan `final` dalam Dart terletak pada waktu inisialisasi dan tingkat immutability atau ketidakmampuan untuk berubah setelah didefinisikan. Variabel `final` dapat diinisialisasi saat runtime, yang artinya nilainya dapat diberikan ketika program dijalankan. Sementara itu, variabel `const` harus diinisialisasi saat compile-time, sehingga nilai yang diberikan sudah diketahui dan tetap sebelum aplikasi dijalankan. 
   
   Selain perbedaan waktu inisialisasi, terdapat perbedaan mendasar pada sifat immutability atau ketidakmampuan untuk diubah. Variabel yang menggunakan `const` bersifat sepenuhnya tidak dapat diubah dalam segala aspeknya. Objek yang dideklarasikan dengan `const` adalah benar-benar konstan, dan baik referensinya maupun isinya tidak bisa diubah setelah dibuat. Sebaliknya, variabel `final` hanya memastikan bahwa referensi atau variabelnya sendiri tidak bisa diubah. Namun, jika variabel `final` tersebut mengacu pada suatu objek yang bersifat dinamis, isi dari objek tersebut masih bisa berubah selama program berjalan, asalkan perubahan tersebut tidak mengubah referensi variabelnya.
 
5) Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
   Jawab:
   Berikut adalah penjelasan implementasi dari setiap langkah dalam membuat aplikasi Flutter sederhana ini.
   1. **Implementasi Elemen Dasar Flutter**  
   Langkah pertama dimulai dengan mengunduh dan menginstal Flutter SDK. SDK ini berfungsi sebagai perangkat utama untuk mengembangkan aplikasi Flutter, termasuk untuk mengompilasi dan menjalankan proyek. Setelah SDK terinstal, Android Studio dipasang sebagai Integrated Development Environment (IDE) yang memudahkan pengembangan, dengan menambahkan Flutter dan SDK Android yang diperlukan.
   
   2. **Menyiapkan Struktur Proyek Flutter**  
   Setelah mengatur lingkungan pengembangan, proyek Flutter dibuat. Pada tahap ini, kita bisa melakukan penyesuaian pada struktur proyek agar lebih terorganisir. Misalnya, membuat folder `lib` sebagai direktori utama kode aplikasi dan menambahkan berkas baru bernama `menu.dart` di dalamnya. File `menu.dart` ini akan digunakan untuk membangun tampilan utama aplikasi.
   
   3. **Membuat Widget Sederhana**  
   Di dalam file `main.dart`, perubahan tema warna aplikasi dilakukan. Ini dicapai dengan mengatur properti `MaterialApp` pada atribut `theme`, yang memungkinkan untuk mengubah skema warna aplikasi, seperti warna header utama dan latar belakang. Pada kasus ini, `ColorScheme.fromSwatch()` digunakan dengan warna utama (`primarySwatch`) sebagai `Colors.pink`, sementara warna header dan latar belakang disesuaikan dengan warna yang diinginkan.
   
   4. **Mengubah Sifat Widget Menjadi Stateless**  
   Widget utama aplikasi, yaitu `MyHomePage`, diubah menjadi widget stateless. Langkah ini menghapus atribut `const` pada deklarasi kelas `MyHomePage` di `main.dart`, dan membuat widget menjadi stateless, artinya tidak ada perubahan state yang dikelola di widget ini. Pada berkas `menu.dart`, properti `stateful` dihapus sehingga widget halaman menjadi stateless.
   
   5. **Membuat Card Sederhana dengan Informasi NPM, Nama, dan Kelas**  
   Untuk menampilkan data seperti NPM, nama, dan kelas, kita mendeklarasikan tiga variabel di `menu.dart` yang menyimpan nilai-nilai tersebut. Kemudian, kita membuat sebuah kelas `InfoCard`, sebuah widget yang digunakan untuk menampilkan informasi ini dalam bentuk kartu yang sederhana. Kartu ini menampilkan judul dan konten, di mana judulnya adalah `NPM`, `Name`, dan `Class`, sedangkan kontennya adalah nilai dari masing-masing variabel.
   
   6. **Membuat Button Card dengan Ikon**  
   Untuk menambahkan tombol-tombol yang mewakili tindakan dalam aplikasi, kita membuat kelas `ItemHomepage`, yang menyimpan informasi tombol, termasuk nama dan ikon. Kemudian, daftar `ItemHomepage` dibuat di dalam `MyHomePage`, yang berisi tombol seperti "Lihat Daftar Produk", "Tambah Produk", dan "Logout". Kelas `ItemCard` kemudian dibuat untuk menampilkan tombol-tombol ini dengan ikon yang sesuai.
   
   7. **Implementasi Pewarnaan Widget ItemCard Berdasarkan Fungsinya**  
    Di dalam kelas ItemCard, metode getBackgroundColor() digunakan untuk menetapkan warna latar belakang setiap tombol sesuai dengan namanya. Fungsi ini mengembalikan warna yang spesifik untuk setiap tombol berdasarkan nama tombol (item.name). Berikut adalah rincian warna untuk setiap tombol:

    1. "Lihat Daftar Produk" diberi warna latar belakang warna merah gelap dengan kode warna Color(0xFF740938). Warna ini menunjukkan bahwa tombol ini memiliki fungsi utama yaitu untuk melihat daftar produk yang tersedia.

    2. "Tambah Produk" memiliki latar belakang warna merah terang dengan kode warna Color(0xFFAF1740). Warna ini digunakan untuk menandai fungsi penambahan produk baru ke dalam daftar, yang sering kali dianggap sebagai tindakan positif atau konstruktif.

    3. "Logout" diberi warna latar belakang merah paling terang dengan kode warna Color(0xFFCC2B52). Warna ini cenderung lebih menonjol dan memberikan kesan peringatan atau aksi keluar, yang sesuai untuk fungsi keluar dari aplikasi.
    
   8. **Mengubah Warna dan Tampilan Background Aplikasi**  
   Pada file `menu.dart`, kita mengubah warna background aplikasi dengan menetapkan `backgroundColor` di dalam `Scaffold` ke warna `Color(0xFFFFECC8)`, yang memberikan tampilan latar belakang yang lembut. Warna header aplikasi juga diubah di `main.dart`, dengan menggunakan properti `colorScheme.primary` di dalam `MaterialApp`, diatur ke warna merah muda tua `Color(0xFFDE7C7D)`. Warna ini memberikan tampilan yang seragam di seluruh aplikasi, termasuk latar belakang dan warna aksen pada header.
   
   9. **Mengintegrasikan InfoCard dan ItemCard di HomePage**  
   Selanjutnya adalah menggabungkan `InfoCard` dan `ItemCard` di dalam `MyHomePage`. Pada metode `build()`, kita menambahkan `InfoCard` ke dalam widget kolom (column) dan mengaturnya dalam baris (row) agar tampil sejajar. Setelah itu, daftar `ItemCard` yang berisi tombol-tombol ditampilkan dalam bentuk grid dengan menggunakan `GridView.count`. Struktur ini memberikan tampilan yang lebih rapi dan menarik untuk aplikasi.
   
   10. **Melakukan git add, git commit, dan git push ke github** 
   Tahap terakhir adalah melakukan git cadd, git commit, dan git push ke direktori github yang sudah saya buat sebelumnya. langkah ini membantu saya untuk menyimpan hasil dari proyek yang telah saya lakukan ke dalam github.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

TUGAS 8

1) Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan
   JAWAB:
   Pada Flutter, penggunaan `const` berfungsi untuk membuat objek atau nilai bersifat tetap (immutable), artinya objek tersebut tidak dapat diubah setelah didefinisikan. Salah satu manfaat besar dari `const` adalah optimasi performa; objek yang ditandai `const` hanya dibuat sekali dan disimpan dalam cache, sehingga tidak perlu dibuat ulang setiap kali aplikasi dibangun ulang. Ini menghemat waktu dan sumber daya, membuat aplikasi berjalan lebih cepat dan efisien. Karena objek `const` ini telah disimpan dalam memori, Flutter tidak perlu melakukan rendering ulang pada elemen-elemen ini ketika ada perubahan pada aplikasi, yang dapat mengurangi beban kerja aplikasi secara keseluruhan dan menghasilkan performa yang lebih optimal, khususnya pada aplikasi yang kompleks atau memiliki banyak elemen UI.
   
   Dengan menggunakan `const`, kode juga menjadi lebih bersih dan mudah dibaca karena `const` menunjukkan secara eksplisit bahwa nilai tersebut akan tetap konstan selama eksekusi aplikasi. Kejelasan kode ini membantu developer untuk memahami bahwa elemen tersebut tidak akan mengalami perubahan, sehingga mengurangi kebingungan dan memperjelas maksud penggunaan nilai atau widget tersebut, yang juga dapat mengurangi risiko bug yang mungkin terjadi akibat perubahan yang tidak disengaja pada elemen-elemen tetap.
   
   Sebagai panduan, `const` sangat berguna untuk widget atau nilai yang sudah pasti dan tidak akan berubah setelah didefinisikan, karena ini dapat meningkatkan performa aplikasi melalui caching. `const` dapat diterapkan pada berbagai elemen UI seperti teks yang statis, ikon, warna, atau elemen dekoratif yang tidak berubah. Penggunaan `const` pada elemen-elemen ini memungkinkan Flutter untuk secara optimal menyimpan elemen-elemen tersebut di memori, sehingga tidak perlu dilakukan penggambaran ulang pada UI setiap kali terjadi pembaruan. 
   
   Namun, `const` sebaiknya tidak digunakan jika objek tersebut perlu diubah selama runtime, atau jika konstruktornya memerlukan perhitungan atau logika yang bergantung pada variabel atau kondisi yang baru diketahui pada runtime. Ini termasuk widget atau nilai yang harus menyesuaikan diri dengan data input pengguna atau elemen-elemen dinamis yang berubah berdasarkan keadaan aplikasi. Karena `const` memerlukan nilai yang diketahui pada waktu kompilasi, objek dengan logika atau variabel dinamis sebaiknya tidak diberi `const`.

2) Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
   JAWAB:
   Dalam Flutter, Column dan Row adalah dua layout widget dasar yang digunakan untuk menyusun elemen-elemen secara vertikal dan horizontal. Column berfungsi untuk mengatur widget secara vertikal, menyusun elemen-elemen dari atas ke bawah. Ini sangat bermanfaat ketika kita ingin membuat tampilan yang menampilkan elemen-elemen secara berurutan dari atas ke bawah, seperti pada form input, daftar item, atau elemen-elemen yang perlu ditumpuk vertikal dalam sebuah tampilan. Dengan Column, elemen-elemen dapat disusun secara rapi dan diberi jarak melalui properti mainAxisAlignment dan crossAxisAlignment, yang mengatur kesejajaran elemen-elemen dalam kolom tersebut.
   
   Sementara itu, Row digunakan untuk mengatur widget secara horizontal, yaitu dengan menempatkan elemen-elemen secara berdampingan dari kiri ke kanan. Row cocok untuk desain yang mengharuskan elemen-elemen ditempatkan secara horizontal, seperti pada toolbar, status bar, atau elemen-elemen lain yang harus ditampilkan secara sejajar. Row juga dilengkapi dengan properti mainAxisAlignment dan crossAxisAlignment yang memungkinkan kita untuk mengatur posisi dan jarak antar-elemen dalam susunan horizontal ini. Keduanya, Column dan Row, mendukung fleksibilitas dalam pengaturan posisi elemen dengan properti Expanded dan Spacer yang memungkinkan pengaturan ruang antar-widget atau pemanjangan widget untuk memenuhi ruang yang tersedia.

3) Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
   JAWAB:
   ### Elemen Input yang Digunakan
   1. TextFormField untuk Nama: Mengumpulkan nama produk. TextFormField digunakan karena memungkinkan pengguna untuk memasukkan teks bebas sesuai nama produk.
   2. TextFormField untuk Harga: Mengumpulkan harga produk. Dipilih TextFormField agar pengguna dapat mengisi harga produk dalam bentuk numerik. Validator ditambahkan untuk memastikan input numerik yang valid.
   3. TextFormField untuk Stok: Mengumpulkan jumlah stok produk. TextFormField digunakan untuk mengizinkan input angka stok produk dengan validasi untuk memastikan nilai positif.
   4. TextFormField untuk Kategori: Mengumpulkan kategori produk. TextFormField dipilih karena kategori produk adalah teks bebas yang dapat bervariasi, tergantung pada tipe produk.
   5. TextFormField untuk Deskripsi: Mengumpulkan deskripsi produk. TextFormField sesuai untuk deskripsi karena memungkinkan input teks yang lebih panjang dan fleksibel.
   6. TextFormField untuk Rating: Mengumpulkan nilai rating produk. TextFormField digunakan untuk mengizinkan pengguna memasukkan angka rating dengan validasi numerik agar input sesuai.
   
   ### Elemen Input yang Tidak Digunakan dan Alasannya
   1. DropdownButtonFormField: Biasanya digunakan untuk memilih dari opsi yang terbatas. Tidak digunakan di sini karena kategori produk tidak memiliki opsi yang tetap dan lebih bervariasi, sehingga TextFormField lebih fleksibel.
   2. CheckboxListTile: Cocok untuk input boolean atau pilihan ganda, seperti "tersedia" atau "habis". Tidak relevan untuk kebutuhan produk ini yang mengumpulkan nilai numerik atau teks spesifik.
   3. RadioListTile: Biasa dipakai untuk memilih satu opsi dari beberapa pilihan yang terbatas, seperti "ukuran kecil, sedang, besar". Tidak sesuai untuk input produk ini yang membutuhkan data numerik atau teks bebas.
   4. SwitchListTile: Digunakan untuk input on/off atau aktif/tidak aktif. Tidak diperlukan dalam form ini karena atribut produk tidak membutuhkan status aktif atau tidak.
   5. Slider: Cocok untuk rentang nilai, seperti memilih nilai diskon atau rating. Karena rating dimasukkan sebagai angka langsung dan form ini tidak membutuhkan rentang nilai interaktif, slider tidak diperlukan.
   6. Date & Time Pickers: Digunakan untuk input tanggal atau waktu, misalnya untuk memilih tanggal kedaluwarsa. Tidak dibutuhkan di sini karena produk ini tidak memerlukan data berbasis waktu.

4) Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
   JAWAB:
   Untuk menjaga tampilan aplikasi Flutter tetap konsisten dan profesional, kita dapat mengatur tema umum menggunakan properti `theme` pada widget `MaterialApp`. Dengan menentukan tema utama di tingkat aplikasi, seluruh widget yang mendukung fitur theming akan secara otomatis mengikuti aturan desain yang kita tentukan. Hal ini membuat pengaturan tampilan jauh lebih efisien dan seragam di seluruh bagian aplikasi.
   
   Tema ini dapat mencakup berbagai elemen desain seperti warna utama, warna sekunder, font default, ukuran teks, serta gaya visual lainnya yang kita ingin gunakan di aplikasi. Dengan menetapkan tema di awal, kita tidak hanya menjaga konsistensi, tetapi juga dapat mengelola perubahan desain dengan mudah. Sebagai contoh, jika kita ingin mengganti warna utama aplikasi, cukup dengan mengubahnya di tema utama dan seluruh widget akan otomatis menyesuaikan, tanpa perlu mengedit setiap widget satu per satu.
   
   Selain itu, dengan menggunakan metode `Theme.of(context)`, kita bisa mengakses tema yang sudah didefinisikan pada setiap bagian aplikasi dengan cepat. Hal ini sangat berguna ketika kita ingin menyesuaikan widget dengan elemen desain yang spesifik. Kita cukup mengacu pada `Theme.of(context)` untuk mengakses warna, ukuran teks, atau gaya font tertentu yang telah diatur sebelumnya. Dengan pendekatan ini, aplikasi tidak hanya terlihat rapi dan terorganisir, tetapi juga mempermudah pengelolaan desain secara keseluruhan, membuat pengembangan aplikasi lebih hemat waktu, terutama saat terjadi perubahan desain di masa mendatang.

5) Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
   JAWAB:
   Jadi, untuk navigasi dasar di Flutter, kita punya `Navigator.push` dan `Navigator.pop`. Keduanya sangat cocok buat navigasi yang simpel—seperti kalau kita mau berpindah ke halaman lain, dan nanti balik lagi ke halaman sebelumnya. Saat kita menggunakan `Navigator.push`, halaman baru akan ditambahkan ke dalam *stack* navigasi, jadi halaman tersebut ada di paling atas. Nah, kalau kita mau balik ke halaman sebelumnya, kita tinggal pakai `Navigator.pop` buat mengeluarkan halaman paling atas tadi dari *stack*. Teknik ini praktis untuk navigasi bolak-balik yang sederhana.
   
   Selain navigasi dasar, Flutter juga menyediakan *named routes*. Dengan *named routes*, kita bisa mendefinisikan rute aplikasi dengan nama-nama tertentu. Misalnya, kita bisa punya rute bernama `/home`, `/profile`, dan sebagainya. Jadi, saat kita perlu berpindah ke halaman tertentu, kita cukup panggil nama rutenya aja. Ini bikin kode navigasi kita lebih rapi, apalagi kalau aplikasi punya banyak halaman. Misalnya, pada aplikasi e-commerce yang punya halaman produk, keranjang, dan checkout, kita bisa mengatur navigasinya dengan lebih terstruktur pakai *named routes*.
   
   Nah, untuk mengatur *named routes* ini, kita bisa memanfaatkan widget `MaterialApp`. Di sini, ada properti `routes` yang bisa kita pakai untuk mendefinisikan semua rute di aplikasi kita. Dengan begitu, setiap halaman di aplikasi punya nama yang unik. Untuk berpindah ke halaman tertentu, kita cukup panggil `Navigator.pushNamed`, dan otomatis kita langsung diarahkan ke halaman yang kita inginkan. Cara ini membantu navigasi kita lebih terorganisir, mudah dipelihara, dan kodenya jadi lebih gampang dibaca.
   
   Lalu, kalau kita ngomongin aplikasi yang lebih kompleks, mungkin dengan beberapa level navigasi seperti aplikasi yang ada tab atau drawer, di sinilah *nested navigators* atau navigasi bertingkat jadi sangat membantu. Dengan menggunakan *nested navigators*, setiap bagian di aplikasi kita punya *stack* navigasinya sendiri. Jadi, misalnya ada tab untuk “Profile” dan “Settings,” tiap tab bisa punya navigasinya sendiri tanpa mengganggu *stack* navigasi utama. Contoh kasusnya, kalau pengguna sedang di tab “Profile” dan membuka halaman edit profil, lalu balik lagi, mereka tetap ada di tab “Profile” tanpa merusak navigasi di level utama aplikasi.
   
   Intinya, Flutter memberikan fleksibilitas buat navigasi dengan berbagai teknik ini. Mulai dari yang dasar seperti `Navigator.push` dan `Navigator.pop` untuk navigasi sederhana, sampai ke *named routes* dan *nested navigators* yang lebih kompleks. Semua ini bertujuan supaya aplikasi kita mudah dikelola, tampilan navigasinya rapi, dan pastinya, pengguna bisa punya pengalaman yang lancar saat berpindah-pindah halaman.

*LANGKAH-LANGKAH MEMENUHI CHECKLIST PADA TUGAS 8*
**Menambahkan Drawer Menu untuk Navigasi**  
Untuk menambahkan Drawer Menu di Flutter, pertama buat folder `widgets` di dalam direktori `lib/` dan tambahkan file `left_drawer.dart` di dalamnya. Kemudian, impor halaman-halaman yang ingin ditampilkan di dalam Drawer tersebut. Di dalam file `left_drawer.dart`, tambahkan routing untuk setiap halaman yang akan ditampilkan di dalam menu Drawer, serta buat fungsi untuk menutup Drawer dan berpindah ke halaman yang sesuai setelah item menu dipilih. Agar Drawer terlihat lebih menarik, kita bisa menambahkan header yang memberikan identitas atau informasi tambahan. Terakhir, masukkan widget Drawer tersebut ke dalam halaman yang diinginkan dengan menambahkannya sebagai parameter `drawer` dalam widget `Scaffold`.

**Menambahkan Form dan Elemen Input**  
Untuk membuat form input, pertama buat file baru bernama `itementry_form.dart` di dalam direktori `lib/`. Di dalam file ini, buatlah struktur dasar halaman form yang menggunakan desain material. Gunakan widget seperti `SingleChildScrollView` untuk membuat layout yang dapat digulirkan, dan berikan styling dasar pada halaman tersebut. Jangan lupa untuk menambahkan Drawer di dalam halaman ini agar pengguna tetap bisa mengakses navigasi lainnya. Selanjutnya, buat `GlobalKey` untuk form agar kita bisa mengontrol status form, validasi input, dan penyimpanan data. Tambahkan elemen input seperti `TextFormField` untuk masing-masing field yang diinginkan, seperti nama produk, harga, dan deskripsi, serta tentukan variabel untuk menyimpan setiap input. Sertakan juga validasi pada setiap input dan berikan desain yang sesuai agar form terlihat rapi dan mudah digunakan. Akhiri dengan menambahkan tombol yang dibungkus dengan widget `Padding` dan `Align` untuk memastikan tombol berada di tempat yang sesuai dan memberikan responsifitas yang baik.

**Menampilkan Data dengan Dialog**  
Setelah pengguna mengisi form dan menekan tombol submit, kita bisa menampilkan data yang telah dimasukkan menggunakan sebuah dialog. Caranya adalah dengan menambahkan fungsi `showDialog()` di dalam callback `onPressed()` pada tombol submit. Fungsi ini akan menampilkan sebuah `AlertDialog` yang berisi informasi atau data yang telah diinput oleh pengguna dalam form. Dialog ini berfungsi sebagai konfirmasi bagi pengguna untuk memastikan bahwa data yang dimasukkan sudah benar sebelum disimpan atau diproses lebih lanjut. Data tersebut bisa ditampilkan dalam format teks atau widget lain yang relevan, memberikan umpan balik langsung kepada pengguna.

**Menambahkan Navigasi pada Tombol**  
Untuk menambahkan navigasi pada tombol, pastikan tombol yang digunakan dibungkus dengan widget seperti `InkWell` agar dapat mendeteksi interaksi pengguna. Di dalam callback `onTap()` atau `onPressed()` dari tombol, tentukan navigasi menggunakan metode `Navigator.pushNamed()` atau metode navigasi lainnya sesuai dengan kebutuhan aplikasi. Pastikan route yang dituju sudah didefinisikan di dalam properti `routes` pada widget `MaterialApp`, sehingga ketika tombol diklik, aplikasi dapat berpindah ke halaman yang sesuai dengan lancar. Navigasi ini memungkinkan pengguna untuk berpindah antarhalaman dalam aplikasi dengan mudah dan terorganisir.
