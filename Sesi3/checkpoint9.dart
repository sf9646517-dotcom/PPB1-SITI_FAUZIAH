import 'dart:io';

void main(){
// Deklarasi variabel boolean
bool isLoggedIn = false;

// Meminta input username dan dari pengguna
stdout.write("Masukkan username: ");
String? username = stdin.readLineSync();

// Contoh logika sederhana: username = admin, password = admin
if (username == "admin") {
isLoggedIn = true;
 }

 // Menampilkan hasil berdasarkan nilai boolean
if (isLoggedIn) {
print("Login berhasil! Selamat datang, $username.");
} else {
print("Login gagal! Username salah.");
}
}