part of fk_common_ui;

class DescriptionText extends StatelessWidget {
  final String text;
  final Alignment alignment;
  final TextAlign textAlignment;

  const DescriptionText(this.text, {this.alignment, this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.centerLeft,
      child: Text(text,
          textAlign: textAlignment ?? TextAlign.start,
          style: const TextStyle(
              color: AppTheme.grey3B, fontSize: 15, height: 1.5)),
    );
  }
}
