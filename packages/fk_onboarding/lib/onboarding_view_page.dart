part of fk_onboarding;

class OnboardingViewPage extends StatelessWidget {
  const OnboardingViewPage({
    Key key,
    @required this.listener,
    @required this.imageUrl,
    @required this.title,
    @required this.description,
    @required this.button,
  }) : super(key: key);

  final Function listener;
  final String imageUrl;
  final String title;
  final String description;
  final String button;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: Image(
            image: AssetImage(imageUrl),
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity),
      ),
      Padding(
        padding: const EdgeInsets.only(
            left: 16.0, right: 16.0, top: 32.0, bottom: 8.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(title,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(description,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.grey[800], fontSize: 16, height: 1.5)),
        ),
      ),
      Expanded(
        child: Align(
          alignment: FractionalOffset.bottomCenter,
          child: FloatingButton(
            text: button,
            listener: listener,
          ),
        ),
      ),
    ]);
  }
}
