part of fk_common_ui;

class OverlayLoader {
  OverlayLoader.internal();
  factory OverlayLoader() => _instance;

  static final OverlayLoader _instance = OverlayLoader.internal();
  static bool _isLoading = false;
  static BuildContext _context;

  static void hide() {
    if (_isLoading) {
      Navigator.of(_context).pop();
      _isLoading = false;
    }
  }

  static void show(BuildContext context) async {
    _context = context;
    _isLoading = true;
    await showDialog<Widget>(
        context: _context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return const SimpleDialog(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            children: <Widget>[
              Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(AppTheme.indigo),
                ),
              )
            ],
          );
        });
  }
}
