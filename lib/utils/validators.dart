/// Validator form tambah menu: nama required, harga tidak boleh 0 atau minus.
String? validateNama(String? value) {
  if (value == null || value.trim().isEmpty) {
    return 'Nama menu tidak boleh kosong';
  }
  return null;
}

String? validateHarga(String? value) {
  if (value == null || value.trim().isEmpty) {
    return 'Harga tidak boleh kosong';
  }
  final parsed = int.tryParse(value.trim());
  if (parsed == null) {
    return 'Harga harus berupa angka';
  }
  if (parsed <= 0) {
    return 'Harga harus lebih dari 0';
  }
  return null;
}
