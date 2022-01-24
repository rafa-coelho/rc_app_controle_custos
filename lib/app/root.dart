import 'package:flutter/material.dart';
import 'package:rc_app_controle_custos/pages/CartoesPage.dart';
import 'package:rc_app_controle_custos/pages/CustosPage.dart';
import 'package:rc_app_controle_custos/pages/HomePage.dart';
import 'package:rc_app_controle_custos/pages/RelatoriosPage.dart';

class Root extends StatefulWidget {
  const Root({Key? key, this.openMenu}) : super(key: key);

  final int? openMenu;

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    switch (widget.openMenu) {
      case 0:
        return HomePage();
      case 1:
        return CartoesPage();
      case 2:
        return CustosPage();
      case 3:
        return RelatoriosPage();
      default:
        return Container();
    }
  }
}
