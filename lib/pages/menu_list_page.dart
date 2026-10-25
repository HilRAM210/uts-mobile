import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uts/app/theme/app_colors.dart';
import 'package:uts/app/widgets/app_text.dart';
import 'package:uts/data/initial_menus.dart';
import 'package:uts/models/menu.dart';
import 'package:uts/pages/add_menu_page.dart';
import 'package:uts/pages/menu_detail_page.dart';
import 'package:uts/utils/formatters.dart';

/// Halaman daftar menu (Soal 2):
/// Scaffold > [AppBar > Text, Column > [Padding > Text,
/// Expanded > ListView.builder > Card > ListTile],
/// FloatingActionButton > Icon].
class MenuListPage extends StatefulWidget {
  const MenuListPage({super.key});

  @override
  State<MenuListPage> createState() => _MenuListPageState();
}

class _MenuListPageState extends State<MenuListPage> {
  final List<Menu> _menus = List.of(initialMenus);

  Future<void> _openAddMenu() async {
    final result = await Get.to(() => const AddMenuPage());
    if (result is Menu) {
      setState(() => _menus.add(result));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          'Kantin Apa?',
          size: 20,
          weight: FontWeight.w700,
          display: true,
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: AppText(
              'Daftar menu',
              size: 14,
              weight: FontWeight.w500,
              color: AppColors.textSecondary,
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 16),
              itemCount: _menus.length,
              itemBuilder: (context, index) {
                final menu = _menus[index];
                return Card(
                  color: AppColors.card,
                  elevation: 0,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                    side: const BorderSide(color: AppColors.border),
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.restaurant_menu),
                    title: AppText(
                      menu.nama,
                      size: 16,
                      weight: FontWeight.w600,
                      display: true,
                    ),
                    subtitle: AppText(
                      formatRp(menu.harga),
                      size: 13,
                      weight: FontWeight.w400,
                      color: AppColors.accent,
                    ),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => Get.to(() => MenuDetailPage(menu: menu)),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openAddMenu,
        child: const Icon(Icons.add),
      ),
    );
  }
}
