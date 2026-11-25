/// Modelo de uma pergunta do quiz.
class Pergunta {
  final String pergunta;
  final List<String> alternativas;
  final int respostaCerta; 

  const Pergunta(this.pergunta, this.alternativas, this.respostaCerta);

  /// Letra da alternativa correta (A, B, C ou D).
  String get letraCorreta => String.fromCharCode(65 + respostaCerta);
}

/// Perguntas sobre One Piece (até o arco de Alabasta).
const List<Pergunta> perguntas = [
  Pergunta(
    'Qual é o nome da tripulação do Luffy?',
    [
      'Piratas do Barba Negra', 'Chapéus de Palha', 'Bando do Piece', 'Piratas Heart',
    ],
    1,
  ),
  Pergunta(
    'Qual é o nome do cozinheiro do bando dos Chapéus de Palha?',
    ['Usopp', 'Zoro', 'Sanji', 'Vivi'],
    2,
  ),
  Pergunta(
    'Qual é o nome da navegadora dos Chapéus de Palha?',
    ['Robin', 'Nami', 'Vivi', 'Chopper'],
    1,
  ),
  Pergunta(
    'Quem foi o primeiro tripulante a aceitar entrar para a tripulação do Luffy?',
    ['Nami', 'Usopp', 'Sanji', 'Zoro'],
    3,
  ),
  Pergunta(
    'Qual é o nome do médico do navio?',
    ['Chopper', 'Vivi', 'Nami', 'Buggy'],
    0,
  ),
  Pergunta(
    'Quem é o vilão principal do arco de Alabasta?',
    ['Buggy', 'Arlong', 'Crocodile', 'Don Krieg'],
    2,
  ),
  Pergunta(
    'Qual é o nome do primeiro navio dos Chapéus de Palha?',
    ['Sunny', 'Merry', 'Moby Dick', 'Palha'],
    1,
  ),
  Pergunta(
    'Em qual ilha a tripulação ganha o navio para entrar na Grand Line?',
    ['Vila Syrup', 'Vila Fuchsia', 'Ilha Gyojin', 'Baratie'],
    0,
  ),
  Pergunta(
    'Em qual cidade o antigo rei dos piratas foi executado?',
    ['Vila Syrup', 'Terra', 'Loguetown', 'Water 7'],
    2,
  ),
  Pergunta(
    'Qual era o nome do falecido rei dos piratas?',
    ['Smoker', 'Roger', 'Garp', 'Shanks'],
    1,
  ),
];
