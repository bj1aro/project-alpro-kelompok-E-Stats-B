# Program Menentukan Tanggal Lahir dari NIP ASN
nip <- "199508172023011001"

# Validasi panjang NIP minimal 8 digit angka
if (nchar(nip) >= 8 && !grepl("\\D", nip)) {
  tahun <- substr(nip, 1, 4)
  bulan_digit <- substr(nip, 5, 6)
  tanggal <- substr(nip, 7, 8)
  
# Percabangan memilih nama bulan
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
  
  if (bulan != "Tidak Valid") {
    cat(paste("Tanggal Lahir:", tanggal, bulan, tahun, "\n"))
  } else {
    cat("Error: Format bulan pada NIP tidak valid.\n")
  }
} else {
  cat("Error: NIP harus berupa angka dan minimal 8 digit.\n")
}
