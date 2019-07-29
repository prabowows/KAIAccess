
import 'package:flutter/material.dart';

import 'CariKereta.dart';
import 'HomeMenu.dart';
import 'SplashScreen.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  int _selectedIndex = 0;
  String iconHome = "assets/ic_home_active.png";
  String iconReport = "assets/ic_report.png";
  String iconOther = "assets/ic_others.png";

  final page = [
    HomeMenu(),
    CariKereta(),
    SplashScreen(),
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(HomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print("heheheehehewjqjkethjkwe ewlgjkwehjkwehtweht");

    switch (state.index) {
      case 0: // resumed
        break;
      case 1: // inactive

        break;
      case 2: // paused

        break;
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _getIconTab(0);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            "assets/ic_kai.png",
            width: 50.0,
            height: 50.0,
          ),
        ),
        title: Text("KAI Access"),
        elevation: 0.0,
        backgroundColor: Color(0xFF115FAA),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.white,
            fontFamily: 'raleway',
            fontSize: 15.0,
          ),
        ),
      ),
      body: page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              iconHome,
              width: 24.0,
              height: 24.0,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              iconReport,
              width: 24.0,
              height: 24.0,
            ),
            title: Text('Pesanan'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              iconOther,
              width: 24.0,
              height: 24.0,
            ),
            title: Text('Others'),
          ),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }

  void _getIconTab(int index) {
    String imgAsset;
    // check if the given tab parameter is the current active tab
    // now given the tab param get its icon considering the fact that if it is active or not
    if (index == 0) {
      imgAsset = "assets/ic_home_active.png";
    } else {
      imgAsset = "assets/ic_home.png";
    }

    setState(() {
      iconHome = imgAsset;
    });

    if (index == 1) {
      imgAsset = "assets/ic_report_active.png";
    } else {
      imgAsset = "assets/ic_report.png";
    }

    setState(() {
      iconReport = imgAsset;
    });

    if (index == 2) {
      imgAsset = "assets/ic_others_active.png";
    } else {
      imgAsset = "assets/ic_others.png";
    }

    setState(() {
      iconOther = imgAsset;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _getIconTab(index);
    });
  }
}
