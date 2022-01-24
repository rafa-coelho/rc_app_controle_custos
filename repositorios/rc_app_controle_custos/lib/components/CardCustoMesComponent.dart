import 'package:flutter/material.dart';
import 'package:rc_app_controle_custos/app/core/app_text_styles.dart';
import 'package:rc_app_controle_custos/app/data_model/custo_model.dart';
import 'package:rc_app_controle_custos/app/enum/TipoCustoEnum.dart';

class CardCustoMesComponent extends StatefulWidget {
  const CardCustoMesComponent({Key? key, required this.custo})
      : super(key: key);

  final CustoModel custo;
  @override
  _CardCustoMesComponentState createState() => _CardCustoMesComponentState();
}

class _CardCustoMesComponentState extends State<CardCustoMesComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.custo.titulo,
                            style: AppTextStyles.cardCustoMesTitle),
                        Text(
                          "R\$ " +
                              (widget.custo.valor)
                                  .toStringAsFixed(2)
                                  .replaceAll(".", ","),
                          style: AppTextStyles.cardCustoMesValue,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: widget.custo.tipo == TipoCustoEnum.Dinheiro
                          ? [Text("Dinheiro")]
                          : [
                              Text("Venc.",
                                  style: AppTextStyles.cardCustoMesTitle),
                              Text("28/02")
                            ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [Icon(Icons.more_vert_outlined)],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
