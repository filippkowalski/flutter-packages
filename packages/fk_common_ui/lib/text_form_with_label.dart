part of fk_common_ui;

class TextFormWithLabelView extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final double width;
  final double height;
  final bool autofocus;
  final TextInputType textInputType;

  const TextFormWithLabelView(this.label, this.controller,
      {this.autofocus,
      this.hintText,
      this.width,
      this.height,
      this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            label,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 14.0),
          ),
        ),
        TextFormView(
          controller,
          hintText: hintText,
          autofocus: autofocus ?? true,
          width: width,
          height: height,
          textInputType: textInputType,
        )
      ],
    );
  }
}
