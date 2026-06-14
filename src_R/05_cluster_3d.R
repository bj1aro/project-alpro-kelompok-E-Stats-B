# 1. Mendefinisikan Fungsi (Syarat Wajib Modul 8)
hitung_jarak <- function(titik1, titik2) {
  # R menggunakan indeks basis 1, bukan 0
  jarak <- sqrt((titik1[1] - titik2[1])^2 + 
                  (titik1[2] - titik2[2])^2 + 
                  (titik1[3] - titik2[3])^2)
  return(jarak)
}

# 2. Konstanta titik pusat cluster berupa vektor 3 elemen
A <- c(2, 1, 3)
B <- c(1, -4, 6)
C <- c(-2, 3, -2)

cat("--- Klasifikasi Cluster 3 Dimensi ---\n")
cat("Masukkan koordinat titik U(x, y, z):\n")

# Membaca input dan mengubahnya menjadi angka(Contoh Input)
x <- 2
y <- -3
z <- 6

# Validasi jika input kosong atau berupa huruf (menjadi NA saat dipaksa as.numeric)
if (!is.na(x) && !is.na(y) && !is.na(z)) {
  
  # Menyimpan titik U sebagai vektor dengan 3 elemen (Syarat Wajib Soal)
  U <- c(x, y, z)
  
  # 3. Memanggil fungsi untuk masing-masing cluster
  jarak_A <- hitung_jarak(U, A)
  jarak_B <- hitung_jarak(U, B)
  jarak_C <- hitung_jarak(U, C)
  
  # 4. Percabangan menentukan jarak terdekat
  if (jarak_A < jarak_B && jarak_A < jarak_C) {
    cluster <- "Cluster A"
  } else if (jarak_B < jarak_A && jarak_B < jarak_C) {
    cluster <- "Cluster B"
  } else if (jarak_C < jarak_A && jarak_C < jarak_B) {
    cluster <- "Cluster C"
  } else {
    cluster <- "Jarak Sama (Tidak Dominan)"
  }
  
  # Menampilkan hasil (menggunakan sprintf untuk pembulatan 3 desimal)
  cat(sprintf("\nJarak titik U ke Pusat A : %.3f\n", jarak_A))
  cat(sprintf("Jarak titik U ke Pusat B : %.3f\n", jarak_B))
  cat(sprintf("Jarak titik U ke Pusat C : %.3f\n", jarak_C))
  cat(paste(">> Titik U digolongkan sebagai anggota:", cluster, "\n"))
  
} else {
  cat("Error: Input koordinat harus berupa angka!\n")
}
