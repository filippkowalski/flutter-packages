part of fk_common_ui;

class Close extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: IconButton(
        icon: Icon(Icons.close),
        onPressed: () => {Navigator.of(context).pop()},
      ),
    );
  }
}
