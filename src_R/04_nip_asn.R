# Program Menentukan Tanggal Lahir dari NIP ASN
nip <- "200002292023011001"  

# 1. Validasi panjang NIP minimal 8 digit angka
if (nchar(nip) >= 8 && !grepl("\\D", nip)) {
  tahun <- substr(nip, 1, 4)
  bulan_digit <- substr(nip, 5, 6)
  tanggal <- substr(nip, 7, 8)
  
  # 2. VALIDASI KALENDER NYATA & TAHUN MAJU
  # Mengonversi teks menjadi objek Date resmi di R
  objek_tanggal <- as.Date(paste(tahun, bulan_digit, tanggal, sep="-"), format="%Y-%m-%d")
  tahun_sekarang <- as.numeric(format(Sys.Date(), "%Y"))
  
  if (is.na(objek_tanggal)) {
    cat("Error: Kombinasi tanggal dan bulan lahir tidak logis/tidak eksis di kalender!\n")
  } else if (as.numeric(tahun) > tahun_sekarang) {
    cat(sprintf("Error: Tahun lahir (%s) tidak logis karena melebihi tahun berjalan saat ini (%d)!\n", tahun, tahun_sekarang))
  } else {
    
    # 3. Percabangan memilih nama bulan jika validasi lolos
    if (bulan_digit == "01") {
      bulan <- "Januari"
    } else if (bulan_digit == "02") {
      bulan <- "Februari"
    } else if (bulan_digit == "03") {
      bulan <- "Maret"
    } else if (bulan_digit == "04") {
      bulan <- "April"
    } else if (bulan_digit == "05") {
      bulan <- "Mei"
    } else if (bulan_digit == "06") {
      bulan <- "Juni"
    } else if (bulan_digit == "07") {
      bulan <- "Juli"
    } else if (bulan_digit == "08") {
      bulan <- "Agustus"
    } else if (bulan_digit == "09") {
      bulan <- "September"
    } else if (bulan_digit == "10") {
      bulan <- "Oktober"
    } else if (bulan_digit == "11") {
      bulan <- "November"
    } else if (bulan_digit == "12") {
      bulan <- "Desember"
    } else {
      bulan <- "Tidak Valid"
    }
    
    cat(paste("NIP:", nip, "\n"))
    cat(paste("Tanggal Lahir:", tanggal, bulan, tahun, "\n"))
  }
} else {
  cat("Error: NIP harus berupa angka dan minimal 8 digit.\n")
}
