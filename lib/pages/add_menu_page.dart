import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:uts/app/theme/app_colors.dart';
import 'package:uts/app/widgets/app_text.dart';
import 'package:uts/models/menu.dart';
import 'package:uts/utils/validators.dart';

/// Halaman tambah menu (Soal 3):
/// Scaffold > [AppBar > Text, Padding > Form > Column >
/// [TextFormField, SizedBox, TextFormField, SizedBox,
/// ElevatedButton > Text]].
class AddMenuPage extends StatefulWidget {
  const AddMenuPage({super.key});

  @override
  State<AddMenuPage> createState() => _AddMenuPageState();
}

class _AddMenuPageState extends State<AddMenuPage> {
  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _hargaController = TextEditingController();

  @override
  void dispose() {
    _namaController.dispose();
    _hargaController.dispose();
    super.dispose();
  }

  void _simpan() {
    if (_formKey.currentState!.validate()) {
      Get.back(
        result: Menu(
          nama: _namaController.text.trim(),
          harga: int.parse(_hargaController.text.trim()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          'Tambah Menu',
          size: 20,
          weight: FontWeight.w700,
          display: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _namaController,
                decoration: const InputDecoration(labelText: 'Nama menu'),
                validator: validateNama,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _hargaController,
                decoration: const InputDecoration(labelText: 'Harga (Rp)'),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: validateHarga,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _simpan,
                child: const AppText(
                  'Simpan Menu',
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
    );
  }
}
