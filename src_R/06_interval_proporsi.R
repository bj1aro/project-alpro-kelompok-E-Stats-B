interval_kepercayaan <- function(p_hat, n, alpha) {
  
  # Validasi NA (input kosong atau tidak valid)
  if (is.na(p_hat) || is.na(n) || is.na(alpha)) {
    cat("Error: Input tidak boleh kosong atau bukan angka.\n")
    return(invisible(NULL))
  }
  
  if (p_hat < 0 || p_hat > 1) {
    cat("Error: Proporsi harus berada antara 0 dan 1.\n")
    return(invisible(NULL))
  }
  
  if (alpha == 0.10) {
    z <- 1.645
  } else if (alpha == 0.05) {
    z <- 1.96
  } else {
    cat("Error: Nilai alpha hanya boleh 0.10 atau 0.05.\n")
    return(invisible(NULL))
  }
  
  se <- sqrt((p_hat * (1 - p_hat)) / n)
  batas_bawah <- p_hat - z * se
  batas_atas  <- p_hat + z * se
  
  cat(sprintf("\nInterval Kepercayaan %.0f%%\n", (1 - alpha) * 100))
  cat(sprintf("%.4f < p < %.4f\n", batas_bawah, batas_atas))
}

# Input
p_hat <- as.numeric(readline("Masukkan nilai proporsi sampel (p_hat): "))
n     <- as.integer(readline("Masukkan nilai n: "))
alpha <- as.numeric(readline("Masukkan nilai alpha (0.10 atau 0.05): "))

interval_kepercayaan(p_hat, n, alpha)