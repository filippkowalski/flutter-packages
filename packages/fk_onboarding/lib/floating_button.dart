part of fk_onboarding;

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key key,
    @required this.text,
    @required this.listener,
    this.isEnabled = true,
  }) : super(key: key);

  final String text;
  final bool isEnabled;
  final Function listener;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 48,
          width: MediaQuery.of(context).size.width,
          child: FlatButton(
            onPressed: isEnabled ? listener : null,
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
            disabledColor: Colors.grey,
            color: Colors.indigo,
            // disabledColor: AppColors.whiteCF,
            // color: AppColors.indigo,
          ),
        ),
      );
}
