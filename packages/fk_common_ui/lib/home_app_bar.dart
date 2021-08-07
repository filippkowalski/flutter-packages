part of fk_common_ui;

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final AppBarAction appBarAction;

  final String title;

  HomeAppBar(
    this.title, {
    this.appBarAction,
    Key key,
  })  : preferredSize = const Size.fromHeight(48.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        title: Text(
          title,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        brightness: Brightness.light,
        centerTitle: false,
        elevation: 0,
        backgroundColor: AppTheme.whiteFC,
        automaticallyImplyLeading: true,
        actions: <Widget>[
          buildAction(),
        ],
      ),
    );
  }

  Widget buildAction() {
    if (appBarAction == null) return Container();

    return FlatButton(
      textColor: AppTheme.indigo,
      onPressed: appBarAction.clickListener,
      child: Text(
        appBarAction.name,
        style: const TextStyle(fontSize: 15),
      ),
      shape: const CircleBorder(side: BorderSide(color: Colors.transparent)),
    );
  }
}

class AppBarAction {
  final String name;
  final Function clickListener;

  AppBarAction(this.name, this.clickListener);
}
