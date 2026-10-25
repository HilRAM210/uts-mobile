import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uts/app/theme/app_colors.dart';
import 'package:uts/app/widgets/app_text.dart';
import 'package:uts/models/menu.dart';
import 'package:uts/utils/formatters.dart';

/// Halaman detail menu,
/// menampilkan nama + harga dan bisa kembali ke daftar.
class MenuDetailPage extends StatelessWidget {
  final Menu menu;

  const MenuDetailPage({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          'Detail Menu',
          size: 20,
          weight: FontWeight.w700,
          display: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          color: AppColors.card,
          elevation: 0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: AppColors.border),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.restaurant_menu,
                    size: 40,
                    color: AppColors.accent,
                  ),
                ),
                const SizedBox(height: 12),
                AppText(
                  menu.nama,
                  size: 22,
                  weight: FontWeight.w700,
                  display: true,
                ),
                const SizedBox(height: 8),
                AppText(
                  formatRp(menu.harga),
                  size: 16,
                  weight: FontWeight.w500,
                  color: AppColors.accent,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => Get.back(),
                  child: const AppText(
                    'Kembali',
                    size: 15,
                    weight: FontWeight.w600,
                    color: AppColors.onAccent,
                    display: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
