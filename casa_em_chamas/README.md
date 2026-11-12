# 🧑‍🚒 Desafio HTML – Casa Virtual

Mini jogo de aventura em texto feito **somente com HTML**, proposto na aula *6 – Casa em Chamas* do curso **Introdução ao Desenvolvimento Web: HTML, CSS e JavaScript** (Plataforma Mais Robotic, trilha *Fundamentos da Web com HTML*).

## 📖 Sobre o desafio

O jogador deve entrar em uma casa virtual e localizar um objeto específico. O jogo começa na frente da casa e termina quando o jogador entra em um cômodo predeterminado.

A cada rodada, o jogo exibe:

- a **localização atual** do jogador (por exemplo: sala, quarto);
- as **opções disponíveis** (por exemplo: porta, corredor).

A interação acontece conforme o jogador navega pelos diferentes espaços da casa.

A proposta minimiza as dicas fornecidas, desafiando a desenvolver a experiência de forma autônoma, utilizando apenas recursos do HTML.

## 🎨 Tema

O tema é livre: pode ser uma caça ao tesouro, ou o tema de bombeiros. Sugestão de início para o tema de bombeiros:

> **🧑‍🚒 Herói das Chamas**
>
> Você é um bravo bombeiro, sua missão é encontrar o cômodo que ainda tem uma pessoa nessa casa em chamas!
>
> 🔥 Depressa! Você está na frente da casa. O que você faz? 🔥
>
> - Entro pela porta
> - Entro pela janela

## 🗺️ Planta da casa

```
 ┌───────────────────────────────┐
 │            cozinha            │
 │                               │
 │  ┌──────────┬─porta─┬───────┐ │
 │  │          │       │       │ │
c│  │  quarto  │       │banheiro│
o│  │    ✖     │       │       │ │
r│  └──────────┴───────┴───────┘ │
r│                               │
e│     sala    porta   quarto    │
d│                               │
o└───porta──────────┴──janela────┘
              rua  ▲
```

Conexões:

| Cômodo | Acessos |
| --- | --- |
| Rua | porta (sala), janela (quarto lateral) |
| Sala | rua (porta), quarto lateral (porta), corredor |
| Quarto lateral | sala (porta), rua (janela) |
| Corredor | sala, cozinha |
| Cozinha | corredor, quarto do meio (porta), banheiro (porta) |
| Banheiro | cozinha |
| Quarto do meio (✖) | cozinha (porta) – **objetivo do jogo** |

## 📋 Requisitos do jogo

> ⚠️ A lista de requisitos não aparece no material de origem (a página foi cortada logo após "Os requisitos do jogo são:"). Complete esta seção com os requisitos da plataforma.

- [ ] _(preencher)_

## 🚀 Como jogar

1. Baixe todos os arquivos `.html` para a **mesma pasta**.
2. Abra o `index.html` no navegador.
3. Clique nos links para escolher suas ações e encontre a pessoa que ainda está na casa.

## 📁 Estrutura do projeto

```
.
├── index.html            # Rua – início do jogo
├── sala.html
├── quarto-lateral.html
├── corredor.html
├── cozinha.html
├── banheiro.html         # Beco sem saída
└── quarto-central.html   # Final – missão cumprida
```

## 🛠️ Tecnologias

- HTML5 (sem CSS e sem JavaScript, conforme a proposta do desafio)

## 🔗 Fonte

Material da aula: <https://plataforma.maisrobotic.com.br/study/course/17/39/phase/185>
