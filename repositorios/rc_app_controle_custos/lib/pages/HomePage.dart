import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rc_app_controle_custos/app/core/app_colors.dart';
import 'package:rc_app_controle_custos/app/core/app_text_styles.dart';
import 'package:rc_app_controle_custos/app/data_model/custos_model.dart';
import 'package:rc_app_controle_custos/app/enum/StatusCustoEnum.dart';
import 'package:rc_app_controle_custos/app/enum/TipoCustoEnum.dart';
import 'package:rc_app_controle_custos/components/CardCustoMesComponent.dart';
import 'package:rc_app_controle_custos/components/CardResumoComponent.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CustoModel> custos = [
    new CustoModel(
      id: "36454CDA-C36B-47A2-B7E9-56EA77B52088",
      titulo: "Cartão 1",
      tipo: TipoCustoEnum.Cartao,
      valor: 1500.75,
      status: StatusCustoEnum.NaoPago,
    ),
    new CustoModel(
      id: "756E0D74-EC7C-43CC-8384-D970F665EDEC",
      titulo: "Luz",
      tipo: TipoCustoEnum.Conta,
      valor: 120.48,
      status: StatusCustoEnum.NaoPago,
    ),
    new CustoModel(
      id: "9D4E83DF-0505-4FFE-8CB9-3193C781CFCC",
      titulo: "Compra aleatória",
      tipo: TipoCustoEnum.Dinheiro,
      valor: 12.48,
      status: StatusCustoEnum.NaoPago,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: AppColors.backgroundApp,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Text(
                    "Olá, Rafael!",
                    style: AppTextStyles.appTitle,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: CardResumoComponent(
                    valor: 150.21,
                    description: "Valor desse mês",
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: CardResumoComponent(
                    valor: 1517.26,
                    description: "Total Parcelado",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Text(
                    "Custos do Mês",
                    style: AppTextStyles.titleThin,
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
            SizedBox(height: 20),
            ...custos.map((e) => CardCustoMesComponent(custo: e))
          ],
        ),
      ),
    );
  }
}
