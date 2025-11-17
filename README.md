# h1d023010_tugas7

Nama     : Ramadhan Fakhtur Rakhman 

NIM      : H1D023010

Tugas 7 – Pertemuan 9 Flutter

Proyek ini dibuat sebagai bagian dari tugas perkuliahan pada pertemuan ke-9 dengan fokus pada implementasi konsep dasar Flutter seperti routes, side menu, login, dan penyimpanan data lokal menggunakan SharedPreferences. Aplikasi ini diberi nama h1d023010_tugas7 sesuai format yang ditentukan dosen dan dirancang sebagai aplikasi sederhana namun lengkap, dengan tampilan yang bersih, modern, serta struktur kode yang rapi. Walaupun mengikuti konsep inti dari modul pembelajaran, seluruh penerapan dalam proyek ini dibuat berbeda secara tampilan, struktur, maupun detail implementasi sehingga tidak menjadi duplikasi dari contoh pada modul.

Aplikasi ini memulai alurnya dari proses pengecekan status login menggunakan penyimpanan lokal. Ketika aplikasi dijalankan, sistem akan membaca nilai isLoggedIn yang tersimpan di SharedPreferences. Apabila nilai tersebut benar, pengguna akan langsung diarahkan menuju halaman utama (dashboard). Jika belum login, aplikasi akan menampilkan halaman login terlebih dahulu. Proses loading kecil ditampilkan saat aplikasi memeriksa data login, sehingga perpindahan halaman terasa lebih natural dan terkontrol. Pemilihan halaman awal dilakukan melalui properti home: pada MaterialApp, bukan menggunakan initialRoute, sehingga lebih aman dan menghindari error rute null.

Halaman login yang disediakan dibuat sederhana namun tetap memperhatikan sisi kenyamanan pengguna. Form login dilengkapi dengan validasi, animasi tombol ketika proses autentikasi berlangsung, serta pesan umpan balik berupa snack bar yang muncul ketika proses login berhasil atau gagal. Username dan password yang digunakan bersifat dummy, yaitu student sebagai username dan 12345 sebagai password. Ketika login berhasil, status login dan username akan disimpan ke SharedPreferences sehingga aplikasi dapat langsung masuk ke dashboard ketika dibuka kembali tanpa harus mengulang proses login.

Setelah berhasil masuk, pengguna diarahkan menuju halaman dashboard yang menampilkan sambutan berupa nama user yang telah login. Pada halaman ini juga tersedia beberapa menu berbentuk kartu seperti Profil, Pengaturan, dan Info Tugas. Navigasi dilakukan menggunakan named routes sehingga kode lebih terstruktur dan mudah dipelihara. Tampilan dashboard dirancang lebih modern menggunakan GridView sehingga tata letaknya terlihat simetris, rapi, dan responsif.

Aplikasi ini juga menyediakan side menu (drawer) sebagai navigasi utama di seluruh halaman setelah login. Drawer menampilkan informasi akun berupa nama pengguna yang telah disimpan di SharedPreferences serta beberapa menu navigasi seperti Dashboard, Profil, Pengaturan, dan Logout. Fitur logout tidak hanya mengembalikan pengguna ke halaman login tetapi juga menghapus seluruh data login yang tersimpan di SharedPreferences. Hal ini memastikan bahwa pengguna benar-benar keluar dan aplikasi tidak dapat langsung masuk kembali saat dijalankan ulang.

Pada halaman profil, pengguna dapat melihat informasi akun serta mengubah nama lengkap melalui sebuah field input. Nama yang dimasukkan akan disimpan ke SharedPreferences sehingga tetap muncul meskipun aplikasi ditutup dan dijalankan kembali. Implementasi ini menunjukkan bahwa aplikasi tidak hanya menyimpan status login tetapi juga dapat menyimpan data lain yang bersifat personal.

Halaman pengaturan yang disediakan bersifat sederhana namun tetap relevan. Di dalamnya terdapat elemen switch untuk menyalakan atau mematikan notifikasi tugas, serta bagian informasi aplikasi yang menjelaskan tujuan pembuatan aplikasi ini. Kehadiran halaman ini membuat aplikasi terasa lebih lengkap meskipun fungsionalitasnya masih dasar.

Dari sisi struktur folder, seluruh kode diatur dengan terstruktur. File utama main.dart digunakan sebagai pusat konfigurasi aplikasi seperti tema, routes, serta pemilihan halaman awal. Seluruh halaman ditempatkan di dalam folder pages agar lebih mudah dipahami dan dikelola. Selain itu, komponen yang digunakan berulang seperti drawer ditempatkan pada folder khusus bernama widgets. Pendekatan ini mengikuti best practice dalam pengembangan aplikasi Flutter modern.

Aplikasi ini juga menyertakan dukungan unit test sederhana dengan menguji tampilan halaman login. Test tersebut dibuat ulang dari test bawaan Flutter sehingga menyesuaikan dengan struktur aplikasi yang sebenarnya, bukan lagi test counter bawaan dari proyek Flutter default.

Secara keseluruhan, proyek h1d023010_tugas7 berhasil menerapkan seluruh poin utama yang diminta dalam tugas, yaitu penggunaan routes, pembuatan side menu, implementasi halaman login dengan penyimpanan data lokal, dan navigasi antar halaman. Selain itu, aplikasi ini juga memiliki desain antarmuka yang lebih menarik dan struktur kode yang lebih profesional, sehingga dapat menjadi dasar yang baik untuk pengembangan aplikasi Flutter yang lebih kompleks di masa mendatang.

Aplikasi h1d023010_tugas7 adalah aplikasi Flutter sederhana yang menerapkan:

  Named Routes → navigasi menggunakan rute bawaan Flutter  
  Side Menu (Drawer) → navigasi utama di dalam aplikasi  
  Login Page → validasi sederhana dengan akun dummy  
  Local Storage (SharedPreferences) → menyimpan:  
  Status login (isLoggedIn)  
  Username  
  Nama lengkap di halaman profil  
  Dashboard (HomePage) → halaman utama setelah login
  ProfilePage → mengubah nama lengkap yang disimpan ke local storage
  SettingsPage → halaman pengaturan sederhana
  
Aplikasi mendemonstrasikan bagaimana Flutter mengelola rute, state login, dan penyimpanan data lokal.

Penjelasan Detail Setiap Bagian Kode

#main.dart

Berfungsi sebagai root aplikasi.
Fitur utama:
Mengecek status login dari SharedPreferences
Menampilkan loading jika data masih dibaca
Menentukan halaman awal (home:) sesuai login
Mendaftarkan seluruh named routes
home: _isLoggedIn ? const HomePage() : const LoginPage()
Dengan pendekatan ini, aplikasi tidak lagi memakai initialRoute, sehingga tidak terjadi error rute null.

**login_page.dart**

Halaman ini:
Memiliki form login dengan username dan password
Validasi input
Membandingkan dengan akun dummy:
Username: student
Password: 12345
Jika login benar:
Menyimpan:
isLoggedIn = true
username
Mengarahkan ke /home
Menampilkan indikator loading & snackbar
Jika salah:
Mengeluarkan pesan error
Ini mempraktikkan:
✔ Form + Validator
✔ SnackBar
✔ SharedPreferences
✔ Navigasi ke halaman lain

**app_drawer.dart (Side Menu)**

Drawer ini muncul di setiap halaman utama setelah login.
Isi menu:
Dashboard
Profil
Pengaturan
Logout
Pada bagian logout:
await prefs.clear();
Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
Fungsinya:
Menghapus semua data login
Membersihkan riwayat halaman
Mengarahkan kembali ke login

**home_page.dart**

Halaman dashboard yang menyapa user:
Halo, {username} 👋
Terdapat 4 card menu:
Profil
Pengaturan
Info Tugas
Logout
Menggunakan:
GridView
Card UI modern
Navigasi via named routes

**profile_page.dart**

Halaman ini membaca:
username dari SharedPreferences
namaLengkap dari SharedPreferences
User bisa mengubah nama lengkap, lalu menyimpannya ke local storage.
Ini mempraktikkan penyimpanan data lokal selain login, bukan hanya status akun.

**settings_page.dart**

Halaman pengaturan sederhana.
Berisi:
SwitchListTile untuk notifikasi
Informasi aplikasi
Halaman ini menunjukkan contoh UI lain yang memanfaatkan drawer dan route.

Penjelasan file main.dart

File main.dart merupakan pusat dari seluruh aplikasi dan menjadi titik awal ketika program dijalankan. Di dalamnya terdapat kelas utama H1D023010Tugas7App yang menggunakan StatefulWidget karena aplikasi membutuhkan proses pengecekan status login yang bersifat dinamis. Pada metode initState, aplikasi memanggil fungsi _checkLoginStatus() untuk membaca nilai isLoggedIn yang tersimpan pada SharedPreferences. Proses ini menentukan apakah pengguna akan langsung diarahkan ke halaman beranda atau ke halaman login. Selama aplikasi menunggu proses pengecekan ini, sebuah tampilan loading sederhana ditampilkan agar transisi terasa lebih natural. Setelah proses pengecekan selesai, aplikasi memuat widget utama menggunakan MaterialApp dengan tampilan dasar yang telah ditentukan melalui tema khusus. Penentuan halaman awal menggunakan properti home:, di mana sistem akan menampilkan HomePage apabila pengguna sudah login, atau LoginPage bila belum. Pemanggilan halaman-halaman lain dilakukan melalui named routes yang didefinisikan pada property routes. Struktur ini membuat navigasi menjadi lebih rapi, mudah dipelihara, dan menghindari error yang biasa muncul jika menggunakan initialRoute tanpa memastikan kesiapan data login.

Penjelasan file login_page.dart

File login_page.dart berfungsi sebagai gerbang awal bagi pengguna untuk masuk ke dalam aplikasi. Di dalam halaman login terdapat dua buah TextField, masing-masing untuk username dan password, yang dikendalikan oleh TextEditingController agar input pengguna dapat dibaca dan divalidasi. Saat tombol login ditekan, aplikasi terlebih dahulu memeriksa apakah kedua field sudah diisi. Apabila masih ada yang kosong, SnackBar digunakan untuk memberikan umpan balik visual agar pengguna mengetahui kesalahan yang terjadi. Jika input sudah terisi lengkap, sistem membandingkan username dan password dengan nilai dummy yang telah ditetapkan, yaitu username student dan password 12345. Ketika proses autentikasi berhasil, aplikasi menyimpan informasi login ke SharedPreferences seperti isLoggedIn = true dan username yang dimasukkan. Setelah data tersimpan, navigasi dilakukan menuju halaman Home menggunakan Navigator.pushReplacementNamed agar halaman login tidak dapat diakses kembali melalui tombol kembali. Proses login ini dilengkapi dengan indikator loading singkat pada tombol agar pengalaman pengguna terasa lebih realistis dan profesional.

Penjelasan file home_page.dart

File home_page.dart menampilkan halaman beranda sebagai pusat aktivitas pengguna setelah berhasil masuk. Pada halaman ini, aplikasi mengambil kembali username yang tersimpan di SharedPreferences untuk ditampilkan sebagai sapaan pribadi seperti “Halo, student 👋”. Tampilan halaman menggunakan pendekatan GridView agar menu-menu utama dapat tersusun rapi dalam bentuk kartu berukuran sama. Setiap kartu mewakili fitur tertentu seperti Profil, Pengaturan, Info Tugas, dan Logout. Pemilihan struktur GridView menjadikan tampilan lebih modern serta responsif pada berbagai ukuran layar. Ketika salah satu kartu dipilih, navigasi dilakukan menggunakan named routes sehingga kode tetap terorganisir. Halaman ini juga menggunakan AppDrawer sehingga pengguna dapat mengakses menu dari drawer kapan saja.

Penjelasan file app_drawer.dart

File app_drawer.dart berfungsi sebagai komponen Drawer yang muncul di hampir semua halaman setelah login. Drawer ini berisi informasi akun yang ditampilkan melalui username yang diambil kembali dari SharedPreferences. Drawer juga menampilkan menu navigasi seperti Dashboard, Profil, Pengaturan, dan Logout. Struktur Drawer disusun menggunakan ListTile agar setiap item menu mudah ditekan dan memiliki ikon pendukung yang membuat tampilan lebih informatif. Fungsi logout pada bagian bawah drawer bekerja dengan cara menghapus semua data SharedPreferences melalui prefs.clear(). Setelah data dibersihkan, navigasi diarahkan kembali ke halaman login menggunakan Navigator.pushNamedAndRemoveUntil, yang memastikan bahwa seluruh halaman sebelumnya dihapus dari stack sehingga pengguna benar-benar keluar dari aplikasi dan tidak dapat kembali ke Home tanpa login ulang. Teknik ini memperkuat keamanan aplikasi dan menjaga alur penggunaan agar sesuai.

Penjelasan file profile_page.dart

File profile_page.dart menyajikan halaman yang berfungsi untuk menampilkan dan mengubah nama lengkap pengguna. Saat halaman dibuka, aplikasi mengambil username dan nama lengkap yang tersimpan di SharedPreferences dan menampilkannya dalam TextField agar pengguna dapat melihat atau mengubahnya. Nama lengkap disimpan menggunakan TextEditingController sehingga field dapat menampilkan nilai awal serta menangkap perubahan input pengguna. Saat tombol simpan ditekan, aplikasi memperbarui nilai namaLengkap di SharedPreferences dan menampilkan SnackBar sebagai konfirmasi bahwa perubahan telah berhasil dilakukan. Data yang disimpan secara lokal ini akan bertahan meskipun aplikasi ditutup, sehingga memastikan pengalaman pengguna yang lebih personal. Implementasi halaman ini memperlihatkan cara Flutter mengelola input pengguna, state UI, serta penyimpanan data secara permanen melalui SharedPreferences.

Penjelasan file settings_page.dart

File settings_page.dart merupakan halaman pengaturan sederhana yang berfungsi sebagai contoh penerapan komponen UI tambahan dalam aplikasi Flutter. Halaman ini memuat elemen SwitchListTile yang digunakan untuk menyalakan atau mematikan pengaturan notifikasi tugas. Meskipun pengaturan ini belum terhubung ke fungsi nyata, kehadirannya memberikan gambaran bagaimana state dapat dikelola di dalam sebuah halaman pengaturan. Selain itu, halaman ini berisi informasi tambahan mengenai aplikasi dan tujuan pembuatannya. Semua elemen dalam halaman ini tetap menggunakan Drawer sehingga pengguna dapat berpindah ke halaman lain dengan mudah.
