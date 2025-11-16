import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:h1d023010_tugas7/main.dart';

void main() {
  testWidgets('Halaman login tampil', (WidgetTester tester) async {
    // Build aplikasi
    await tester.pumpWidget(const H1D023010Tugas7App());

    // Cek apakah halaman login muncul
    expect(find.text('h1d023010_tugas7 Login'), findsOneWidget);

    // Cek tombol LOGIN ada
    expect(find.text('LOGIN'), findsOneWidget);

    // Cek input username ada
    expect(find.byIcon(Icons.person_outline), findsOneWidget);

    // Cek input password ada
    expect(find.byIcon(Icons.lock_outline), findsOneWidget);
  });
}
