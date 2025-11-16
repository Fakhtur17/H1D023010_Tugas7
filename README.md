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
