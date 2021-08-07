part of fk_onboarding;

class OnboardingPage extends StatefulWidget {
  final List<Widget> onboardingPages;
  final AppTheme appTheme;

  const OnboardingPage({Key key, this.onboardingPages, this.appTheme})
      : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            alignment: FractionalOffset.bottomCenter,
            children: <Widget>[
              PageView(
                controller: _controller,
                children: widget.onboardingPages,
              ),
              Positioned(
                bottom: 88,
                child: ScrollingPageIndicator(
                  dotColor: widget.appTheme.inactiveColor,
                  dotSelectedColor: widget.appTheme.activeColor,
                  dotSize: 10,
                  dotSelectedSize: 12,
                  dotSpacing: 24,
                  controller: _controller,
                  itemCount: 2,
                ),
              )
            ],
          ),
        ));
  }
}
