import 'package:rc_app_controle_custos/app/enum/StatusCustoEnum.dart';
import 'package:rc_app_controle_custos/app/enum/TipoCustoEnum.dart';

class CustoModel {
  late String id;
  late String titulo;
  late double valor;
  late TipoCustoEnum tipo;
  late StatusCustoEnum status;
  DateTime? vencimento;
  double? valorPago;

  CustoModel({
    required this.id,
    required this.titulo,
    required this.tipo,
    required this.valor,
    required this.status,
    this.vencimento,
    this.valorPago,
  });
}
