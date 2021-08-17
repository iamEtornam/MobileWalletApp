import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mobile_wallet_app/ui/event_page.dart';
import 'package:mobile_wallet_app/ui/home_page.dart';
import 'package:mobile_wallet_app/ui/setting_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _index = 0;

  List<Widget> _pages = [
    HomePage(),
    EventPage(),
    SetttingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(duration: Duration(seconds: 2),curve: Curves.bounceInOut,
      child: _pages[_index],
      ),
       bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: _changePage,
          selectedItemColor: Theme.of(context).accentColor,
          unselectedItemColor: Colors.grey,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(AntDesign.wallet), label:'Wallet'),
            BottomNavigationBarItem(
                icon: Icon(Octicons.location), label: 'Events'),
            BottomNavigationBarItem(
                icon: Icon(Octicons.settings), label: 'Settings'),
          ]),
    );
  }

  _changePage(int pageIndex) {
    setState(() => _index = pageIndex);
  }
}
