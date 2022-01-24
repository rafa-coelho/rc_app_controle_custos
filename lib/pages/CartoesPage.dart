import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rc_app_controle_custos/app/core/app_colors.dart';
import 'package:rc_app_controle_custos/app/core/app_text_styles.dart';
import 'package:rc_app_controle_custos/app/data_model/cartao_model.dart';
import 'package:rc_app_controle_custos/components/CardCartaoComponent.dart';

class CartoesPage extends StatefulWidget {
  const CartoesPage({Key? key}) : super(key: key);

  @override
  _CartoesPageState createState() => _CartoesPageState();
}

class _CartoesPageState extends State<CartoesPage> {
  var cartoes = <CartaoModel>[
    new CartaoModel(
      id: "81AE5661-E1A3-46C9-9860-C1FF4121B29F",
      nome: "Cartão 1",
      diaVencimento: 28,
      valorMes: 1999.99,
      valorParcelado: 2523.18,
    ),
    new CartaoModel(
      id: "EA1FB438-FD51-47C4-B8AC-11E2D54B14C8",
      nome: "Cartão 2",
      diaVencimento: 25,
      valorMes: 625.22,
      valorParcelado: 115,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      color: AppColors.backgroundApp,
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Text(
                    "Cartões",
                    style: AppTextStyles.appTitle,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      CupertinoIcons.add,
                      color: AppColors.darkBlue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          // CardCartão
          ...cartoes.map((e) => CardCartaoComponent(cartao: e))
        ],
      ),
    );
  }
}
