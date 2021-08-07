part of fk_common_ui;

class TextFormView extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double width;
  final double height;
  final bool autofocus;
  final TextInputType textInputType;

  const TextFormView(this.controller,
      {this.hintText,
      this.autofocus,
      this.width,
      this.height,
      this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width ?? MediaQuery.of(context).size.width,
      height: height,
      decoration: BoxDecoration(
        color: controller.text.isEmpty ? AppTheme.whiteF7 : AppTheme.gentleBlue,
        borderRadius: const BorderRadius.all(Radius.circular(2)),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType ?? TextInputType.text,
        textCapitalization: TextCapitalization.sentences,
        autofocus: autofocus ?? false,
        maxLines: null,
        decoration: InputDecoration(
            focusColor: AppTheme.indigo,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide:
                    const BorderSide(color: AppTheme.indigo, width: 1.5)),
            hintText: hintText,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.only(
                left: 14.0, right: 14.0, top: 10.0, bottom: 10.0),
            errorMaxLines: 1),
      ),
    );
  }
}
