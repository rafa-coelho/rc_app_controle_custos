import 'package:flutter/material.dart';
import 'package:rc_app_controle_custos/app/core/app_text_styles.dart';
import 'package:rc_app_controle_custos/app/data_model/custo_fixo_model.dart';

class CardCustoFixoComponent extends StatefulWidget {
  const CardCustoFixoComponent({Key? key, required this.custoFixo})
      : super(key: key);

  final CustoFixoModel custoFixo;

  @override
  _CardCustoFixoComponentState createState() => _CardCustoFixoComponentState();
}

class _CardCustoFixoComponentState extends State<CardCustoFixoComponent> {
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
                    flex: 20,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.custoFixo.titulo,
                            style: AppTextStyles.cardCustoMesTitle,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "R\$ " +
                                (widget.custoFixo.valor)
                                    .toStringAsFixed(2)
                                    .replaceAll(".", ","),
                            style: AppTextStyles.cardCartaoValue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(flex: 1, child: Icon(Icons.chevron_right))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
