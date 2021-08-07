part of fk_common_ui;

class InfoPageWithButton extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String footer;
  final Function footerClickListener;
  final String buttonText;
  final Function buttonClickListener;

  const InfoPageWithButton(
      {this.imageUrl,
      this.title,
      this.description,
      this.footer,
      this.footerClickListener,
      this.buttonText,
      this.buttonClickListener});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            child: HeaderText(title),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: DescriptionText(description),
          ),
          footer != null
              ? Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.info,
                            color: AppTheme.indigo, size: 14.0),
                      ),
                      Flexible(
                        child: InkWell(
                          onTap: footerClickListener,
                          child: Text(
                            footer,
                            style: TextStyle(
                                height: 1.4,
                                color: AppTheme.grey3B,
                                fontSize: 13.0),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              : Container(),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: FloatingButton(
              text: buttonText,
              listener: buttonClickListener,
            ),
          )
        ],
      ),
    );
  }
}
