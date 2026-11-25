import 'dart:io';

import 'package:quiz_one_piece/perguntas.dart';

/// Ranking da sessão atual: guarda nome e pontuação de cada partida.
final List<Map<String, dynamic>> ranking = [];

void main() {
  exibirBoasVindas();
  final nome = lerNome();
  print('\nBem vindo, $nome! O seguinte desafio é testar seus conhecimentos sobre One Piece (até o arco de Alabasta). Boa sorte!');

  var jogarNovamente = true;
  while (jogarNovamente) {
    final acertos = jogar(nome);
    ranking.add({'nome': nome, 'pontos': acertos});
    exibirResultado(nome, acertos, perguntas.length);
    exibirRanking();
    jogarNovamente = perguntarSeJogaNovamente();
  }

  print('\nAté a próxima aventura, $nome!');
}

void exibirBoasVindas() {
  print('=====================================');
  print('QUIZ ONE PIECE (ATÉ ALABASTA)');
  print('=====================================');
  print('Teste seus conhecimentos sobre o mundo dos piratas de One Piece!');
  print('Responda as perguntas com A, B, C ou D.\n');
}

/// Pede o nome até que o jogador digite algo.
String lerNome() {
  while (true) {
    stdout.write('Por favor, informe seu nome: ');
    final entrada = stdin.readLineSync()?.trim() ?? '';
    if (entrada.isNotEmpty) {
      return entrada;
    }
    print('O nome não pode ficar vazio. Tente novamente.');
  }
}

/// leitor de resposta
String lerResposta() {
  while (true) {
    stdout.write('Sua resposta (A/B/C/D): ');
    final entrada = stdin.readLineSync()?.trim().toUpperCase() ?? '';
    if (entrada == 'A' || entrada == 'B' || entrada == 'C' || entrada == 'D') {
      return entrada;
    }
    if (entrada.isEmpty) {
      print('Você não digitou nada! Digite A, B, C ou D.');
    } else {
      print('Alternativa inválida! Digite A, B, C ou D.');
    }
  }
}

/// Executa uma partida e devolve o número de acertos.
int jogar(String nome) {
  // cria uma copia e embaralha a ordem das perguntas
  final sorteadas = List<Pergunta>.of(perguntas)..shuffle();
  var acertos = 0;

  for (var i = 0; i < sorteadas.length; i++) {
    final pergunta = sorteadas[i];
    print('\n--- Pergunta ${i + 1} de ${sorteadas.length} ---');
    print(pergunta.pergunta);
    for (var j = 0; j < pergunta.alternativas.length; j++) {
      final letra = String.fromCharCode(65 + j);
      print('  $letra) ${pergunta.alternativas[j]}');
    }

    final resposta = lerResposta();

    if (resposta == pergunta.letraCorreta) {
      acertos++;
      print('Você Acertou, $nome! Muito bem!');
    } else {
      final textoCorreto = pergunta.alternativas[pergunta.respostaCerta];
      print('Errou! A alternativa correta era ${pergunta.letraCorreta}) $textoCorreto.');
    }
  }
  return acertos;
}

/// Mostra a pontuação e uma mensagem que varia conforme o desempenho.
void exibirResultado(String nome, int acertos, int total) {
  print('\n=====================================');
  print('Resultado final de $nome: $acertos de $total perguntas corretas.');

  final percentual = acertos / total;
  if (acertos == total) {
    print('Perfeito! Você acertou todas as perguntas, é um especialista!');
  } else if (percentual >= 0.7) {
    print('Muito bem! Você acertou bem!');
  } else if (percentual >= 0.4) {
    print('Nada mal, mas ainda lhe falta algo meu jovem');
  } else {
    print('Hmm... talvez tente assistir a One Piece e volte para tentar de novo!');
  }
  print('=====================================');
}

/// Mostra o ranking da sessão
void exibirRanking() {
  final ordenado = List<Map<String, dynamic>>.of(ranking)
    ..sort((a, b) => (b['pontos'] as int).compareTo(a['pontos'] as int));

  print('\n🏅 RANKING DA SESSÃO');
  for (var i = 0; i < ordenado.length; i++) {
    print('${i + 1}º - ${ordenado[i]['nome']}: ${ordenado[i]['pontos']} ponto(s)');
  }
}

/// Pergunta se o jogador quer jogar de nvo
bool perguntarSeJogaNovamente() {
  while (true) {
    stdout.write('\nQuer jogar novamente? (S/N): ');
    final entrada = stdin.readLineSync()?.trim().toUpperCase() ?? '';
    if (entrada == 'S') {
      return true;
    }
    if (entrada == 'N') {
      return false;
    }
    print('Digite S para sim ou N para não.');
  }
}
