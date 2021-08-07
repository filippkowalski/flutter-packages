part of fk_common_ui;

class InfoPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  InfoPage({this.imageUrl, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Image(
                image: AssetImage(imageUrl),
                height: MediaQuery.of(context).size.height / 2.2),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: Header(title),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: Description(description),
          ),
        ],
      ),
    );
  }
}
