import 'data.dart';
import 'input.dart';

// ============================================================
// Fungsi bantu
// ============================================================

/// Mencari barang berdasarkan kode. Mengembalikan null jika tidak ada.
Map<String, dynamic>? cariByKode(String kode) {
  for (final barang in daftarBarang) {
    if (barang['kode'] == kode) return barang;
  }
  return null;
}

/// Menghitung total harga semua barang di keranjang (sebelum diskon).
int hitungTotal() {
  var total = 0;
  keranjang.forEach((kode, jumlah) {
    final barang = cariByKode(kode)!;
    total += (barang['harga'] as int) * jumlah;
  });
  return total;
}

/// Mencetak isi keranjang beserta subtotal setiap barang.
void cetakIsiKeranjang(Map<String, int> isi) {
  isi.forEach((kode, jumlah) {
    final barang = cariByKode(kode)!;
    final harga = barang['harga'] as int;
    print(
      '$kode | ${barang['nama']} | $jumlah x Rp$harga = Rp${harga * jumlah}',
    );
  });
}

// ============================================================
// Fitur yang sudah jadi
// ============================================================

/// Menu 1: menampilkan semua barang.
void tampilkanBarang() {
  print('\n=== Daftar Barang ===');
  for (final barang in daftarBarang) {
    print(
      '${barang['kode']} | ${barang['nama']} | '
      'Rp${barang['harga']} | stok ${barang['stok']}',
    );
  }
}

/// Menu 2: memasukkan barang ke keranjang.
void tambahKeKeranjang() {
  print('\n=== Tambah ke Keranjang ===');
  final kode = bacaTeks('Kode barang').toUpperCase();
  final barang = cariByKode(kode);
  if (barang == null) {
    print('Barang dengan kode $kode tidak ditemukan.');
    return;
  }
  final jumlah = bacaInt('Jumlah', min: 1, max: 1000);
  final sudahDiKeranjang = keranjang[kode] ?? 0;
  final stok = barang['stok'] as int;
  if (sudahDiKeranjang + jumlah > stok) {
    print(
      'Stok tidak cukup. Stok ${barang['nama']}: $stok, '
      'di keranjang: $sudahDiKeranjang.',
    );
    return;
  }
  keranjang[kode] = sudahDiKeranjang + jumlah;
  print('$jumlah ${barang['nama']} masuk ke keranjang.');
}

/// Menu 3: menampilkan isi keranjang, diskon, dan total bayar.
void tampilkanKeranjang() {
  print('\n=== Keranjang ===');
  if (keranjang.isEmpty) {
    print('Keranjang kosong.');
    return;
  }
  cetakIsiKeranjang(keranjang);
  final total = hitungTotal();
  final diskon = hitungDiskon(total);
  print('Total      : Rp$total');
  print('Diskon     : Rp$diskon');
  print('Total bayar: Rp${total - diskon}');
}

// ============================================================
// Fitur pilihan (pilih minimal 3, lihat README.md)
// ============================================================

/// Menu 4 [Mudah]: menambah barang baru ke daftar barang.
void tambahBarangBaru() {
  // TODO: minta kode, nama, harga, dan stok. Tolak jika kode sudah dipakai
  // (pakai cariByKode). Tambahkan ke daftarBarang.
  print('Fitur belum tersedia.');
}

/// Menu 5 [Mudah]: menghapus satu barang dari keranjang.
void hapusDariKeranjang() {
  print('\n=== Hapus dari Keranjang ===');
  print('Kode barang: '); // Mengganti stdout.write menjadi print biasa
  String kode = bacaTeks('Kode barang').toUpperCase();

  if (keranjang.containsKey(kode)) {
    keranjang.remove(kode);
    print('Barang $kode dihapus dari keranjang.');
  } else {
    print('Barang tidak ditemukan di dalam keranjang.');
  }
}
  // TODO: minta kode barang, hapus dari keranjang.
  
  // Tampilkan pesan jika barang tidak ada di keranjang.
 
/// [Sedang] Menghitung potongan diskon dari [total] belanja.
///
/// Fungsi ini sudah dipakai di menu 3. Selama belum dibuat, diskon selalu 0.
int hitungDiskon(int total) {
  // TODO: kembalikan potongan sesuai aturan diskon di data.dart:
  // total >= batasDiskonBesar -> persenDiskonBesar %,
  // total >= batasDiskonKecil -> persenDiskonKecil %, selain itu 0.
  return 0;
}

/// Menu 6 [Sedang]: membayar belanjaan di keranjang.
void bayar() {
  print('\n=== Pembayaran ===');
  int total = hitungTotal();
  int diskon = hitungDiskon(total);
  int totalBayar = total - diskon;

  print('Total bayar: Rp$totalBayar');
  print('Uang diterima: ');
  int uang = bacaInt('Uang diterima',min: totalBayar);

  if (uang < totalBayar) {
    int kurang = totalBayar - uang;
    print('Pembayaran gagal. Exception: Uang kurang Rp$kurang.');
    return;
  }

  int kembalian = uang - totalBayar;
  print('Kembalian: Rp$kembalian');
  print('Pembayaran berhasil.');
  
  kurangiStok();
  simpanRiwayat(total, diskon, uang, kembalian);
  keranjang.clear();
}
  // TODO:
  // 1. Tampilkan total bayar (total - diskon), lalu minta uang yang diterima.
  // 2. Buat fungsi hitungKembalian(totalBayar, uang) yang melempar Exception
  //    jika uang kurang. Tangkap dengan try-catch dan tampilkan pesannya.
  // 3. Jika berhasil: tampilkan kembalian, panggil kurangiStok() dan
  //    simpanRiwayat(...), lalu kosongkan keranjang.
 

/// [Sulit] Mengurangi stok barang sesuai isi keranjang.
///
/// Dipanggil dari bayar(), jadi fitur ini membutuhkan menu 6.
void kurangiStok() {
  // TODO: untuk setiap barang di keranjang, kurangi stoknya di daftarBarang.
}

/// [Sulit] Menyimpan transaksi yang sudah dibayar ke riwayatTransaksi.
///
/// Dipanggil dari bayar(), jadi fitur ini membutuhkan menu 6.
void simpanRiwayat(int total, int diskon, int uang, int kembalian) {
  Map<String, int> salinanKeranjang = Map.from(keranjang);
  
  riwayatTransaksi.add({
    'no': riwayatTransaksi.length + 1,
    'keranjang': salinanKeranjang,
    'total': total,
    'diskon': diskon,
    'uang': uang,
    'kembalian': kembalian,
  });
}
  // TODO: simpan nomor transaksi, salinan isi keranjang, total, diskon, uang,
  // dan kembalian sebagai Map ke riwayatTransaksi.


/// Menu 7 [Sulit]: menampilkan struk semua transaksi.
void tampilkanRiwayat() {
  print('\n=== Riwayat Transaksi ===');
  if (riwayatTransaksi.isEmpty) {
    print('Belum ada riwayat transaksi.');
    return;
  }

  for (var tx in riwayatTransaksi) {
    print('--- Transaksi #${tx['no']} ---');
    cetakIsiKeranjang(tx['keranjang'] as Map<String, int>);
    
    int total = tx['total'] as int;
    int diskon = tx['diskon'] as int;
    int totalBayar = total - diskon;
    
    print('Total       : Rp$total');
    print('Diskon      : Rp$diskon');
    print('Total bayar : Rp$totalBayar');
    print('Uang        : Rp${tx['uang']}');
    print('Kembalian   : Rp${tx['kembalian']}');
  }
}
  // TODO: tampilkan setiap transaksi di riwayatTransaksi seperti struk:
  // isi belanja, total, diskon, total bayar, uang, dan kembalian.

