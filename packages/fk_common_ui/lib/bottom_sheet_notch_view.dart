part of fk_common_ui;

class BottomSheetNotchView extends StatelessWidget {
  final Color backgroundColor;

  const BottomSheetNotchView({Key key, this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(3.0),
            child: Container(
              height: 6.0,
              width: 60.0,
              color: backgroundColor ?? AppTheme.whiteE1,
            ),
          ),
        ));
  }
}
