part of fk_common_ui;

class AppTheme {
  Color mainColor;
  Color backgroundColor;
  Color accentColor;
  Color inactiveColor;
  Color activeColor;

  AppTheme(
      {this.mainColor,
      this.backgroundColor,
      this.accentColor,
      this.inactiveColor,
      this.activeColor});

  static const black = Color(0xff000000);
  static const black3B = Color(0xff3b3b3b);
  static const black22 = Color(0xff222222);

  static const indigo = Color(0xff3a66db);
  static const gentleBlue = Color(0xfff5f9ff);

  static const white = Color(0xffffffff);
  static const white9F = Color(0xff9f9f9f);
  static const whiteCF = Color(0xffcfcfcf);
  static const whiteE1 = Color(0xffe1e1e1);
  static const whiteB1 = Color(0xffb1b1b1);
  static const whiteFC = Color(0xfffcfcfc);
  static const whiteF7 = Color(0xfff7f7f7);
  static const whiteF2 = Color(0xfff2f2f2);

  static const grey3B = Color(0xff3b3b3b);
  static const grey62 = Color(0xff626262);
  static const borderGrey = Color(0xf1f000000);
}
