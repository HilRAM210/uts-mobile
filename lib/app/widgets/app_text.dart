import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts/app/theme/app_colors.dart';

// Display memakai Space Grotesk agar judul terbaca jelas dengan karakter yang tegas dan bersih.
// Isi memakai Inter yang netral dan bersih.
// Space Grotesk sendiri sebenarnya dipilih karena preferensi pribadi (Font Favorite).
// Sedangkan Inter dipilih karena cocok dengan Space Grotesk.
class AppText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight weight;
  final Color? color;
  final bool display;

  const AppText(
    this.text, {
    super.key,
    required this.size,
    required this.weight,
    this.color,
    this.display = false,
  });

  @override
  Widget build(BuildContext context) {
    final style = display ? GoogleFonts.spaceGrotesk : GoogleFonts.inter;
    return Text(
      text,
      style: style(
        fontSize: size,
        fontWeight: weight,
        color: color ?? AppColors.textPrimary,
      ),
    );
  }
}
