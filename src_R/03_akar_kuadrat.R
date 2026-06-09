# Fungsi untuk menghitung akar persamaan kuadrat
hitung_akar_kuadrat <- function() {
  cat("=== Program Pencari Akar Persamaan Kuadrat ===\n")
  cat("Bentuk umum: ax^2 + bx + c = 0\n")
  
  # Membaca koefisien dari pengguna dan mengonversinya ke numerik
  a_input <- readline(prompt = "Masukkan koefisien a: ")
  b_input <- readline(prompt = "Masukkan koefisien b: ")
  c_input <- readline(prompt = "Masukkan koefisien c: ")
  
  # as.numeric akan menghasilkan NA jika input bukan angka
  a <- suppressWarnings(as.numeric(a_input))
  b <- suppressWarnings(as.numeric(b_input))
  c <- suppressWarnings(as.numeric(c_input))
  
  # Validasi dasar: memastikan input tidak kosong atau bukan angka
  if (is.na(a) || is.na(b) || is.na(c)) {
    cat("\nInput tidak valid! Harap masukkan nilai berupa angka.\n")
    return()
  }
  
  # Validasi dasar: a tidak boleh 0 untuk persamaan kuadrat
  if (a == 0) {
    cat("Nilai 'a' tidak boleh 0. Ini bukan persamaan kuadrat.\n")
    return()
  }
  
  # Menghitung nilai diskriminan
  diskriminan <- (b^2) - (4 * a * c)
  
  # Menentukan dan mencetak jenis akar
  if (diskriminan > 0) {
    x1 <- (-b + sqrt(diskriminan)) / (2 * a)
    x2 <- (-b - sqrt(diskriminan)) / (2 * a)
    
    cat("\nPersamaan memiliki dua akar real yang berbeda:\n")
    # Mengatur tampilan akar bilangan real dalam tiga desimal menggunakan sprintf
    cat(sprintf("x1 = %.3f\n", x1))
    cat(sprintf("x2 = %.3f\n", x2))
    
  } else if (diskriminan == 0) {
    x <- -b / (2 * a)
    
    cat("\nPersamaan memiliki satu akar real (akar kembar):\n")
    # Mengatur tampilan akar bilangan real dalam tiga desimal menggunakan sprintf
    cat(sprintf("x = %.3f\n", x))
    
  } else {
    # Jika diskriminan < 0, maka akar bertipe imajiner
    cat("\nPersamaan tersebut hanya memiliki akar-akar imajiner.\n")
  }
}

# Menjalankan fungsi utama
hitung_akar_kuadrat()
