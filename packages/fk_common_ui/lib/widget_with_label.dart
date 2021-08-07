part of fk_common_ui;

class WidgetWithLabel extends StatelessWidget {
  final String label;
  final Widget widget;

  const WidgetWithLabel(this.label, this.widget);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            label,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 14.0),
          ),
        ),
        widget
      ],
    );
  }
}
