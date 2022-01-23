class CartaoModel {
  late String id;
  late String nome;
  late int diaVencimento;
  late double valorMes;
  late double valorParcelado;
  CartaoModel({
    required this.id,
    required this.nome,
    required this.diaVencimento,
    required this.valorMes,
    required this.valorParcelado,
  });
}
