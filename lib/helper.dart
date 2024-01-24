import 'package:flutter/material.dart';

class Helperfnc {
  //add rgb(28, 27, 32)
  static const Color appBarColor = Color.fromRGBO(0, 89, 64, 1);
  static const Color locationColor = Color.fromRGBO(55, 138, 96, 1);
  static const Color specialsNearYouColor = Color.fromRGBO(155, 255, 226, 1);
  static const Color searchBoxColor = Color.fromRGBO(117, 186, 181, 1);
  static const Color searchBoxTextColor = Color.fromRGBO(58, 122, 102, 1);
  static const Color pageIndicatorColor = Color.fromRGBO(187, 254, 238, 1);
  static const Color restaurantCardGradientColor = Color.fromRGBO(2, 27, 23, 1);
  static const Color bottomNavigationBarGradientLightColor = Color.fromRGBO(16, 150, 101, 1);
  static const Color bottomNavigationBarGradientDarkColoe = Color.fromRGBO(3, 62, 36, 1);
  static const Color limeTextColor = Color.fromRGBO(67, 255, 165, 1);
  static const Color paragraphTextColor = Color.fromRGBO(152, 193, 188, 1);
  static const Color paragraphTextColor2 = Color.fromRGBO(254, 255, 221, 1);
  static const Color paragraphTextColor3 = Color.fromRGBO(35, 52, 0, 1);
  static const Color menuBG = Color.fromRGBO(185, 247, 219, 1);
  static const Color lightBGColor = Color.fromRGBO(240, 230, 208, 1);
  static const Color darkBGColor = Color.fromRGBO(0, 10, 30, 1);
  static const Color navigationButtonOff = Color.fromRGBO(73, 132, 115, 1);
  static const Color navigationButtonOn = Color.fromRGBO(148, 255, 225, 1);
  static const Color darkInformationCardColor = Color.fromRGBO(1, 24, 15, 1);
  static const Color lightInformationCardColor = Color.fromRGBO(233, 241, 212, 1);
  static const Color informationCardTextColor = Color.fromRGBO(64, 136, 116, 1);
  static const Color informationCardTextColor2 = Color.fromRGBO(148, 255, 225, 1);
  static const Color informationCardTextColor3 = Color.fromRGBO(13, 73, 54, 1);
  static const Color drawerBGColor = Color.fromRGBO(28, 45, 41, 0.9);
  static const Color drawerSelectedButtonBGColor = Color.fromRGBO(137, 255, 203, 1);
  static const Color drawerButtonBGColor = Color.fromRGBO(48, 74, 70, 1);
  static const Color drawerTextColor = Color.fromRGBO(5, 106, 78, 1);
  static const Color drawerSelectedTextColor = Color.fromRGBO(68, 192, 157, 1);
  AssetImage Colorchangelogo = AssetImage("assets/images/Colorchangelogo");
}

// light theme

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData;
  Color _informationCardColor;
  Color _informationCardTextColor;
  Color _paragraphTextColor;

  ThemeNotifier(this._themeData, this._informationCardColor, this._informationCardTextColor, this._paragraphTextColor) {
    _informationCardColor = _informationCardColor;
    _informationCardTextColor = _informationCardTextColor;
    _paragraphTextColor = _paragraphTextColor;
  }

  getTheme() => _themeData;
  getInformationCardColor() => _informationCardColor;
  getInformationCardTextColor() => _informationCardTextColor;
  getParagraphTextColor() => _paragraphTextColor;

  setTheme(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  setInformationCardColor(Color informationCardColor) {
    _informationCardColor = informationCardColor;
    notifyListeners();
  }

  setInformationCardTextColor(Color informationCardTextColor) {
    _informationCardTextColor = informationCardTextColor;
    notifyListeners();
  }

  setParagraphTextColor(Color paragraphTextColor) {
    _paragraphTextColor = paragraphTextColor;
    notifyListeners();
  }

  toggleTheme() {
    if (_themeData ==
        ThemeData(
          useMaterial3: true,
          fontFamily: 'Inter',
          scaffoldBackgroundColor: Helperfnc.lightBGColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: Helperfnc.lightBGColor,
            elevation: 0,
          ),
        )) {
      _themeData = ThemeData(
        useMaterial3: true,
        fontFamily: 'Inter',
        scaffoldBackgroundColor: Helperfnc.darkBGColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: Helperfnc.darkBGColor,
        ),
      );
      _informationCardColor = Helperfnc.darkInformationCardColor;
      _informationCardTextColor = Helperfnc.informationCardTextColor2;
      _paragraphTextColor = Helperfnc.paragraphTextColor2;
    } else {
      _themeData = ThemeData(
        useMaterial3: true,
        fontFamily: 'Inter',
        scaffoldBackgroundColor: Helperfnc.lightBGColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: Helperfnc.lightBGColor,
          elevation: 0,
        ),
      );
      _informationCardColor = Helperfnc.lightInformationCardColor;
      _informationCardTextColor = Helperfnc.informationCardTextColor3;
      _paragraphTextColor = Helperfnc.paragraphTextColor3;
    }
    notifyListeners();
  }
}
