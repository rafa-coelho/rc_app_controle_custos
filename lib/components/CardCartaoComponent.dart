import 'package:flutter/material.dart';
import 'package:rc_app_controle_custos/app/core/app_text_styles.dart';
import 'package:rc_app_controle_custos/app/data_model/cartao_model.dart';

class CardCartaoComponent extends StatefulWidget {
  const CardCartaoComponent({Key? key, required this.cartao}) : super(key: key);

  final CartaoModel cartao;

  @override
  _CardCartaoComponentState createState() => _CardCartaoComponentState();
}

class _CardCartaoComponentState extends State<CardCartaoComponent> {
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.cartao.nome,
                          style: AppTextStyles.cardCustoMesTitle,
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    "R\$ " +
                                        (widget.cartao.valorMes)
                                            .toStringAsFixed(2)
                                            .replaceAll(".", ","),
                                    style: AppTextStyles.cardCartaoValue,
                                  ),
                                  Text(
                                    "Esse mês",
                                    style: AppTextStyles.cardCartaoDescription,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "R\$ " +
                                        (widget.cartao.valorParcelado)
                                            .toStringAsFixed(2)
                                            .replaceAll(".", ","),
                                    style: AppTextStyles.cardCartaoValue,
                                  ),
                                  Text(
                                    "Parcelado",
                                    style: AppTextStyles.cardCartaoDescription,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    widget.cartao.diaVencimento.toString(),
                                    style: AppTextStyles.cardCartaoValue,
                                  ),
                                  Text(
                                    "Vencimento",
                                    style: AppTextStyles.cardCartaoDescription,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
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
