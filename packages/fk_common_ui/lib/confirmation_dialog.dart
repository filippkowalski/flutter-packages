part of fk_common_ui;

class ConfirmationDialog extends StatelessWidget {
  final String title;
  final String positiveButtonText;
  final String negativeButtonText;
  final Function onPositiveTap;
  final Function onNegativeTap;

  const ConfirmationDialog(
      {Key key,
      @required this.title,
      @required this.positiveButtonText,
      @required this.negativeButtonText,
      @required this.onPositiveTap,
      @required this.onNegativeTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      actions: [
        TextButton(
          child: Text(negativeButtonText),
          onPressed: onNegativeTap,
        ),
        TextButton(
          child: Text(positiveButtonText),
          onPressed: onPositiveTap,
        ),
      ],
    );
    ;
  }
}
