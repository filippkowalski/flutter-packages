part of fk_common_ui;

class HeaderText extends StatelessWidget {
  final String text;
  final Alignment alignment;
  final TextAlign textAlignment;

  const HeaderText(this.text, {this.alignment, this.textAlignment});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.centerLeft,
      child: Text(text,
          textAlign: textAlignment ?? TextAlign.start,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19)),
    );
  }
}
