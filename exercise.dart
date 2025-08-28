class Pedido {
  Passageiro passageiro;
  PassagemAerea passagem;
  int pontos;
  Taxa taxa;

  Pedido(this.passageiro, this.passagem, this.pontos, this.taxa);
}

class Passageiro {
  String nome;
  String sobrenome;
  DateTime dataNascimento;
  String sexo;

  Passageiro(this.nome, this.sobrenome, this.dataNascimento, this.sexo);
}

class PassagemAerea {
  Voo ida;
  Voo volta;

  PassagemAerea(this.ida, this.volta);
}

class Voo {
  String numero;
  String tipo; // Ex: Econômica, Executiva
  String companhia;
  DateTime horarioSaida;
  DateTime horarioChegada;
  String localSaida;
  String localChegada;
  int bagagemPermitida;
  bool tarifaReembolsavel;

  Voo(
    this.numero,
    this.tipo,
    this.companhia,
    this.horarioSaida,
    this.horarioChegada,
    this.localSaida,
    this.localChegada,
    this.bagagemPermitida,
    this.tarifaReembolsavel,
  );
}

class Taxa {
  double valor;
  String formaPagamento;

  Taxa(this.valor, this.formaPagamento);
}

void main() {
  // Criando passageiro
  var passageiro = Passageiro(
    "Eduardo",
    "Gomes",
    DateTime(2000, 5, 27),
    "Masculino",
  );

  // Criando voos
  var vooIda = Voo(
    "AZ4826",
    "Econômica",
    "Azul",
    DateTime(2021, 10, 14, 8, 30),
    DateTime(2021, 10, 14, 9, 30),
    "São Paulo",
    "Curitiba",
    10,
    false,
  );

  var vooVolta = Voo(
    "AZ4740",
    "Econômica",
    "Azul",
    DateTime(2021, 10, 17, 14, 30),
    DateTime(2021, 10, 17, 15, 40),
    "Curitiba",
    "São Paulo",
    10,
    false,
  );

  // Criando passagem
  var passagem = PassagemAerea(vooIda, vooVolta);

  // Criando taxa
  var taxa = Taxa(71.58, "Dinheiro");

  // Criando pedido
  var pedido = Pedido(passageiro, passagem, 12600, taxa);

  // --- Resumo do Pedido ---
  print("========== RESUMO DO PEDIDO ==========\n");

  print("Passageiro: ${pedido.passageiro.nome} ${pedido.passageiro.sobrenome}");
  print("Sexo: ${pedido.passageiro.sexo}");
  print("Data de Nascimento: ${pedido.passageiro.dataNascimento.day}/"
      "${pedido.passageiro.dataNascimento.month}/"
      "${pedido.passageiro.dataNascimento.year}");
  print("Pontos acumulados: ${pedido.pontos}");
  print("Taxa: R\$ ${pedido.taxa.valor} (${pedido.taxa.formaPagamento})\n");

  print("------ Voo de Ida ------");
  print("Número: ${pedido.passagem.ida.numero}");
  print("Companhia: ${pedido.passagem.ida.companhia}");
  print("Classe: ${pedido.passagem.ida.tipo}");
  print("Saída: ${pedido.passagem.ida.localSaida} - ${pedido.passagem.ida.horarioSaida}");
  print("Chegada: ${pedido.passagem.ida.localChegada} - ${pedido.passagem.ida.horarioChegada}");
  print("Bagagem Permitida: ${pedido.passagem.ida.bagagemPermitida}kg");
  print("Tarifa Reembolsável: ${pedido.passagem.ida.tarifaReembolsavel ? "Sim" : "Não"}\n");

  print("------ Voo de Volta ------");
  print("Número: ${pedido.passagem.volta.numero}");
  print("Companhia: ${pedido.passagem.volta.companhia}");
  print("Classe: ${pedido.passagem.volta.tipo}");
  print("Saída: ${pedido.passagem.volta.localSaida} - ${pedido.passagem.volta.horarioSaida}");
  print("Chegada: ${pedido.passagem.volta.localChegada} - ${pedido.passagem.volta.horarioChegada}");
  print("Bagagem Permitida: ${pedido.passagem.volta.bagagemPermitida}kg");
  print("Tarifa Reembolsável: ${pedido.passagem.volta.tarifaReembolsavel ? "Sim" : "Não"}");

  print("\n======================================");
}