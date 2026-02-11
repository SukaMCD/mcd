# Changelog

Semua perubahan penting pada project **McdBash** akan didokumentasikan di file ini.

Format ini didasarkan pada [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
dan project ini mengikuti [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.3.0] - 2026-02-11

### Added

- **Native Windows Support**: Sekarang mendukung Windows secara native melalui Git Bash.
- **Cross-Platform Installers**: Menambahkan `setup.bat` (Windows) dan `setup.sh` (Linux/macOS).
- **Windows Shim**: Menambahkan `mcd.bat` agar command `mcd` bisa dipanggil langsung dari CMD atau PowerShell.
- **Auto-Update**: Menambahkan fitur `mcd -update` untuk memperbarui McdBash langsung dari repository GitHub.
- **Dynamic Path Detection**: Script sekarang secara otomatis mendeteksi lokasi install-nya sendiri.

### Changed

- Menaikkan versi semua modul ke 1.3.0.
- Memperbarui `README.md` dengan instruksi instalasi Windows.
- Mengubah label versi di help menu menjadi "Cross-Platform".

---

## [1.2.0] - 2026-02-08

### Added

- Premium UI redesign dengan 256-bit color palette.
- ASCII art headers untuk semua modul.
- Animasi spinner yang lebih halus.
- Layout Box untuk summary instalasi.

### Changed

- Konsistensi visual di semua scripts.
- Pesan error yang lebih informatif.
- Interface pemilihan package yang lebih baik.

---

## [1.1.0] - 2026-01-15

### Added

- Environment switcher (`mcd -env`).
- Peningkatan pada log monitoring.

---

## [1.0.0] - 2025-12-01

### Added

- Initial release.
- Laravel installer (`mcd -laravel`).
- Development mode (`mcd -dev`).
- Basic optimizer (`mcd -optim`).
