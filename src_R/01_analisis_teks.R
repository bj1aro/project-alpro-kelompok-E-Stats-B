teks <- readline(prompt = "Masukkan teks: ")

# Hitung jumlah kalimat
jumlah_kalimat <- lengths(regmatches(teks, gregexpr("\\.", teks)))

# Hilangkan titik
teks_tanpa_titik <- gsub("\\.", "", teks)

# Hitung jumlah kata
kata <- unlist(strsplit(teks_tanpa_titik, "\\s+"))
jumlah_kata <- length(kata)

cat("Teks tersebut memuat", jumlah_kalimat, "kalimat dan", jumlah_kata, "kata.\n")