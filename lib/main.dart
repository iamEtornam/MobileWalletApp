import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/ui/dashboard_page.dart';
import 'package:mobile_wallet_app/utils/custom_theme.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Wallet',
      theme: customLightTheme(context),
      darkTheme: customDarkTheme(context),
      themeMode: ThemeMode.system,
      home: DashboardPage(),
    );
  }
}
