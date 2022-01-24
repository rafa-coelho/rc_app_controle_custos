import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rc_app_controle_custos/app/core/app_colors.dart';
import 'package:rc_app_controle_custos/app/core/app_text_styles.dart';
import 'package:rc_app_controle_custos/app/data_model/custo_fixo_model.dart';
import 'package:rc_app_controle_custos/components/CardCustoFixoComponent.dart';

class CustosPage extends StatefulWidget {
  const CustosPage({Key? key}) : super(key: key);

  @override
  _CustosPageState createState() => _CustosPageState();
}

class _CustosPageState extends State<CustosPage> {
  var custosFixos = <CustoFixoModel>[
    new CustoFixoModel(
        id: "03281A6A-A725-4E98-AB13-C2B00BFC6481",
        titulo: "Aluguel",
        valor: 800),
    new CustoFixoModel(
        id: "7ED0A7CA-92F9-44C7-BBB9-166504532F46",
        titulo: "Empréstimo",
        valor: 800),
    new CustoFixoModel(
        id: "D2492590-01DF-4919-9434-407168EFF6C1", titulo: "Luz", valor: 180),
    new CustoFixoModel(
        id: "7B597E29-88FC-4CC9-BC2A-F777D6BE9A2A",
        titulo: "Faculdade",
        valor: 200),
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
                    "Custos Fixos",
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
          Row(
            children: [
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Total", style: AppTextStyles.titleThin),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "R\$",
                              style: AppTextStyles.cardMoneySymbol,
                            ),
                            Text(
                              "1820,00",
                              style: AppTextStyles.cardMoney,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ...custosFixos
              .map((custo) => CardCustoFixoComponent(custoFixo: custo))
        ],
      ),
    );
  }
}
