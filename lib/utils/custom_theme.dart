import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

/// light theme
ThemeData customLightTheme(
  BuildContext context,
) {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textSelectionTheme: TextSelectionThemeData(cursorColor: Color(0xFF0A9974)),
      errorColor: Color(0xFFB00020),
      platform: defaultTargetPlatform,
      highlightColor: Color(0xFF0A9974).withOpacity(.5),
      primaryColor: Color(0xFFFFFFFF),
      indicatorColor: Color(0xFF58A9BE),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: Color(0xFF0A9974)),
      unselectedWidgetColor: Colors.grey,
      brightness: Brightness.light,
      fontFamily: GoogleFonts.openSans().fontFamily,
      cardColor: Color.fromRGBO(250, 250, 250, 1),
      accentColor:Color(0xFF58A9BE),

      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        alignLabelWithHint: true,
        hintStyle: Theme.of(context).textTheme.bodyText1,
        contentPadding: EdgeInsets.all(15.0),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300],width: .5),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300],width: .5),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFE5E5E5)),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFB00020).withOpacity(.5)),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFB00020)),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        labelStyle: Theme.of(context).textTheme.bodyText2,
        errorStyle: Theme.of(context)
            .textTheme
            .bodyText2
            .copyWith(color: Color(0xFFB00020)),
      ),
      iconTheme: IconThemeData(color: Colors.black),
      tabBarTheme: TabBarTheme(
        unselectedLabelColor: Colors.black.withOpacity(.5),
      ),
      textTheme: Typography.material2018(platform: defaultTargetPlatform)
          .white
          .copyWith(
            bodyText1: TextStyle(color: Colors.black, fontSize: 16),
            bodyText2: TextStyle(color: Colors.black, fontSize: 14),
            caption: TextStyle(color: Colors.black, fontSize: 12),
            headline1: TextStyle(color: Colors.black, fontSize: 96),
            headline2: TextStyle(color: Colors.black, fontSize: 60),
            headline3: TextStyle(color: Colors.black, fontSize: 48),
            headline4: TextStyle(color: Colors.black, fontSize: 34),
            headline5: TextStyle(color: Colors.black, fontSize: 24),
            headline6: TextStyle(color: Colors.black, fontSize: 20),
            subtitle1: TextStyle(color: Colors.black, fontSize: 16),
            subtitle2: TextStyle(color: Colors.black, fontSize: 14),
            overline: TextStyle(color: Colors.black, fontSize: 10),
            button: TextStyle(color: Colors.black, fontSize: 16),
          ),
      dividerColor: Colors.grey,
      appBarTheme: AppBarTheme(
          elevation: 0,
          brightness: Brightness.light,
          color: Colors.white,
          iconTheme: IconThemeData(color: Color(0xFF58A9BE)),
          textTheme: Typography.material2018(platform: defaultTargetPlatform)
              .white
              .copyWith(
                bodyText1: TextStyle(color: Colors.black, fontSize: 16),
                bodyText2: TextStyle(color: Colors.black, fontSize: 14),
                caption: TextStyle(color: Colors.black, fontSize: 12),
                headline1: TextStyle(color: Colors.black, fontSize: 96),
                headline2: TextStyle(color: Colors.black, fontSize: 60),
                headline3: TextStyle(color: Colors.black, fontSize: 48),
                headline4: TextStyle(color: Colors.black, fontSize: 34),
                headline5: TextStyle(color: Colors.black, fontSize: 24),
                headline6: TextStyle(color: Colors.black, fontSize: 20),
                subtitle1: TextStyle(color: Colors.black, fontSize: 16),
                subtitle2: TextStyle(color: Colors.black, fontSize: 14),
                overline: TextStyle(color: Colors.black, fontSize: 10),
                button: TextStyle(color: Colors.black, fontSize: 16),
              )));
}

///dark theme
ThemeData customDarkTheme(
  BuildContext context,
) {
  return ThemeData(
      scaffoldBackgroundColor: Color(0xFF121212),
      visualDensity: VisualDensity.adaptivePlatformDensity,
          textSelectionTheme: TextSelectionThemeData(cursorColor: Color(0xFF0A9974)),
      errorColor: Color(0xFFCF6679),
      platform: defaultTargetPlatform,
      highlightColor: Color(0xFF0A9974).withOpacity(.5),
      primaryColor: Colors.black,
      indicatorColor: Color(0xFF58A9BE),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: Color(0xFF0A9974)),
      unselectedWidgetColor: Colors.grey,
      accentColor: Color(0xFF0A9974),
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.openSans().fontFamily,
      cardColor: Color.fromRGBO(31, 31, 31, 1),
      tabBarTheme: TabBarTheme(
        unselectedLabelColor: Colors.white.withOpacity(.7),
      ),
      textTheme: Typography.material2018(platform: defaultTargetPlatform)
          .white
          .copyWith(
            bodyText1: TextStyle(color: Colors.white, fontSize: 16),
            bodyText2: TextStyle(color: Colors.white, fontSize: 14),
            caption: TextStyle(color: Colors.white, fontSize: 12),
            headline1: TextStyle(color: Colors.white, fontSize: 96),
            headline2: TextStyle(color: Colors.white, fontSize: 60),
            headline3: TextStyle(color: Colors.white, fontSize: 48),
            headline4: TextStyle(color: Colors.white, fontSize: 34),
            headline5: TextStyle(color: Colors.white, fontSize: 24),
            headline6: TextStyle(color: Colors.white, fontSize: 20),
            subtitle1: TextStyle(color: Colors.white, fontSize: 16),
            subtitle2: TextStyle(color: Colors.white, fontSize: 14),
            overline: TextStyle(color: Colors.white, fontSize: 10),
            button: TextStyle(color: Colors.white, fontSize: 16),
          ),
      iconTheme: IconThemeData(color: Colors.white),
      dividerColor: Colors.white.withOpacity(.6),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Color.fromRGBO(31, 31, 31, 1),
        filled: true,
        alignLabelWithHint: true,
        hintStyle: Theme.of(context).textTheme.bodyText1,
        contentPadding: EdgeInsets.all(15.0),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFE5E5E5)),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFCF6679).withOpacity(.5)),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFCF6679)),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        labelStyle:
            Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.white),
        errorStyle: Theme.of(context)
            .textTheme
            .bodyText2
            .copyWith(color: Color(0xFFCF6679)),
      ),
      appBarTheme: AppBarTheme(
          elevation: 0,
          brightness: Brightness.dark,
          color: Color(0xFF121212),
          iconTheme: IconThemeData(color: Color(0xFF58A9BE)),
          textTheme: Typography.material2018(platform: defaultTargetPlatform)
              .white
              .copyWith(
                bodyText1: TextStyle(color: Colors.white, fontSize: 16),
                bodyText2: TextStyle(color: Colors.white, fontSize: 14),
                caption: TextStyle(color: Colors.white, fontSize: 12),
                headline1: TextStyle(color: Colors.white, fontSize: 96),
                headline2: TextStyle(color: Colors.white, fontSize: 60),
                headline3: TextStyle(color: Colors.white, fontSize: 48),
                headline4: TextStyle(color: Colors.white, fontSize: 34),
                headline5: TextStyle(color: Colors.white, fontSize: 24),
                headline6: TextStyle(color: Colors.white, fontSize: 20),
                subtitle1: TextStyle(color: Colors.white, fontSize: 16),
                subtitle2: TextStyle(color: Colors.white, fontSize: 14),
                overline: TextStyle(color: Colors.white, fontSize: 10),
                button: TextStyle(color: Colors.white, fontSize: 16),
              )));
}
