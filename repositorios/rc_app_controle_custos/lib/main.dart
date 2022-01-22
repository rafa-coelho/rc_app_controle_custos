import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rc_app_controle_custos/core/app_colors.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'app/root.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static final title = 'salomon_bottom_bar';

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyApp.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: AppColors.bottomMenu,
        body: SafeArea(
          child: Container(
            color: AppColors.backgroundApp,
            child: Root(
              openMenu: _currentIndex,
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 80,
          child: SalomonBottomBar(
            currentIndex: _currentIndex,
            onTap: (i) => setState(() => _currentIndex = i),
            selectedItemColor: AppColors.darkBlue,
            unselectedItemColor: AppColors.darkBlue,
            items: [
              SalomonBottomBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
              ),
              SalomonBottomBarItem(
                icon: Icon(Icons.credit_card),
                title: Text("Cartões"),
              ),
              SalomonBottomBarItem(
                icon: Icon(CupertinoIcons.money_dollar),
                title: Text("Custos"),
              ),
              SalomonBottomBarItem(
                icon: Icon(Icons.bar_chart),
                title: Text("Relatórios"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
