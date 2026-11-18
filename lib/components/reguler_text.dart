import 'package:material_ui/material_ui.dart';

class RegulerText extends StatelessWidget {
  const new({
    super.key,
    required this.text,
    this.color,
    this.size,
    this.textAlign,
    this.weight,
  });

  final String text;
  final double? size;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? weight;

  factory RegulerText.semiBold(
    String text, {
    double? size,
    Color? color,
    TextAlign? textAlign,
  }) {
    return RegulerText(
      text: text,
      color: color,
      size: size,
      textAlign: textAlign,
      weight: FontWeight.w600,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodyMedium
          ?.copyWith(fontSize: size, color: color, fontWeight: weight),
    );
  }
}
