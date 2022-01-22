import 'package:flutter/material.dart';
import 'package:rc_app_controle_custos/app/core/app_text_styles.dart';

class CardResumoComponent extends StatefulWidget {
  const CardResumoComponent(
      {Key? key, required this.valor, required this.description})
      : super(key: key);

  final double valor;
  final String description;

  @override
  _CardResumoComponentState createState() => _CardResumoComponentState();
}

class _CardResumoComponentState extends State<CardResumoComponent> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9),
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("R\$", style: AppTextStyles.titleThin),
            SizedBox(height: 10),
            Text(
              (widget.valor).toStringAsFixed(2).replaceAll(".", ","),
              style: AppTextStyles.cardMoney,
            ),
            SizedBox(height: 10),
            Text(widget.description)
          ],
        ),
      ),
    );
  }
}
