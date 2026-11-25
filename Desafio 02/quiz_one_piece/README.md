# Quiz One Piece

Projeto do Desafio 2: Fazendo meu Quiz com Dart, da Trilha de Desenvolvimento Mobile.

Aluno: Ruan da Silva Santos

## Sobre o quiz

Jogo de perguntas e respostas no terminal sobre One Piece, cobrindo a história desde o início até o arco de Alabasta da Serie de TV(para inglobar mais pessoas). São 10 perguntas, cada uma com 4 alternativas (A, B, C e D) e apenas uma correta.

**Exemplo de pergunta:**

```
Quem é o vilão principal do arco de Alabasta?
  A) Buggy
  B) Arlong
  C) Crocodile
  D) Don Krieg
```

## Como executar

```bash
dart pub get
dart run
```

## Funcionalidades

- Pergunta o nome do jogador e usa o nome nas mensagens
- Perguntas armazenadas em uma lista (`lib/perguntas.dart`)
- Aceita respostas em maiúsculas ou minúsculas
- Pede nova resposta se a entrada for inválida ou vazia
- Mostra a alternativa correta quando o jogador erra
- Pontuação final (ex.: `4 de 10 perguntas corretas`) e mensagem final que varia conforme o desempenho
- Extras: perguntas embaralhadas, opção de jogar novamente e ranking da sessão

## Estrutura

```
bin/quiz_one_piece.dart   # lógica do jogo (funções, for, condicionais)
lib/perguntas.dart        # classe Pergunta e lista de perguntas
```

## Uso de IA

Boa parte do uso da IA foi para confirmar as funções e correções de linhas de erro, as perguntas e respostas foram feitas a mão junto com as funções principais do codigo, porém a IA recomendo como deveria ficar a lista para poder facilitar o codigo.
