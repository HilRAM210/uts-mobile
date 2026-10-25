/// Format angka ribuan yang dipisahkan dengan titik.
String formatRp(int value) {
  final digits = value.toString();
  final reversed = StringBuffer();
  var count = 0;
  for (var i = digits.length - 1; i >= 0; i--) {
    reversed.write(digits[i]);
    count++;
    if (count == 3 && i != 0) {
      reversed.write('.');
      count = 0;
    }
  }
  return 'Rp ${reversed.toString().split('').reversed.join()}';
}
