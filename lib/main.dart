import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uts/app/theme/app_theme.dart';
import 'package:uts/pages/menu_list_page.dart';

void main() {
  runApp(const KantinApp());
}

class KantinApp extends StatelessWidget {
  const KantinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Kantin Kita',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      home: const MenuListPage(),
    );
  }
}
