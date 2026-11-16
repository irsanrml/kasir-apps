import 'package:flutter/material.dart';
import 'package:tugas5/colors.dart';
import 'package:tugas5/components/reguler_text.dart';
import 'package:tugas5/components/subtitle_text.dart';

class KartuProduk extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.secondary),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 12,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.secondary.withValues(alpha: .3),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10),
                child: Image.network(
                  'https://picsum.org/id/1001158676/800/600.jpg',
                ),
              ),
            ),
          ),
          RegulerText(text: 'Organic Potato Organic Potato Organic Potato'),
          SubtitleText(text: '21.000 / kg'),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              fixedSize: Size(double.infinity, 28),
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8),
              ),
            ),
            child: Text(
              'Tambah',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 14,
                fontWeight: FontWeight(600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
