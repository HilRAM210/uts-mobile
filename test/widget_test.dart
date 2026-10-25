import 'package:flutter_test/flutter_test.dart';
import 'package:uts/main.dart';

void main() {
  testWidgets('Daftar menu tampil dengan 5 data awal',
      (WidgetTester tester) async {
    await tester.pumpWidget(const KantinApp());

    // Judul + header + 5 menu awal harus tampil.
    expect(find.text('Kantin Kita'), findsOneWidget);
    expect(find.text('Daftar menu hari ini'), findsOneWidget);
    expect(find.text('Nasi Goreng Spesial'), findsOneWidget);
    expect(find.text('Rp 15.000'), findsOneWidget);
  });
}
