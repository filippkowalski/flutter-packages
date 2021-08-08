part of fk_common_ui;

class LoadingPage extends StatelessWidget {
  final String _text;

  const LoadingPage(this._text);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircularProgressIndicator(),
        const SizedBox(
          height: 16,
        ),
        Text(_text)
      ],
    ));
  }
}
