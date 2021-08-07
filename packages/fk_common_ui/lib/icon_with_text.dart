part of fk_common_ui;

class IconWithText extends StatelessWidget {
  final String iconUri;
  final String label;
  final Function onTapListener;

  const IconWithText({Key key, this.iconUri, this.label, this.onTapListener})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTapListener,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            onPressed: null,
            icon: Image(
              width: 24.0,
              image: AssetImage(iconUri),
            ),
          ),
          Text(label,
              style: const TextStyle(color: AppTheme.grey3B, fontSize: 12.0))
        ],
      ),
    );
  }
}
