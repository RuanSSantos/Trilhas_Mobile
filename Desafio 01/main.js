// Lista dos produtos
const produtos = [
  { name: "Memória RAM 16GB DDR5", preco: 389.90 },
  { name: "Gabinete Gamer", preco: 459.90 },
  { name: "Placa-Mãe AM5", preco: 899.90 },
  { name: "Placa de Vídeo 8GB", preco: 2499.90 },
  { name: "Fone de Ouvido Headset", preco: 249.90 },
  { name: "Mouse Gamer", preco: 149.90 }
];

// Formata um número como moeda brasileira (ex.: R$ 1.234,50) < esse aqui achei legal 
function formatarMoeda(valor) {
  return valor.toLocaleString("pt-BR", { style: "currency", currency: "BRL" });
}

// iniciando a compra
function simularCompra() {
  const quantidades = [];

  // Pergunta a quantidade de cada produto
  for (let i = 0; i < produtos.length; i++) {
    const produto = produtos[i];
    let quantidade;
    let valido = false;

    while (!valido) {
      const resposta = prompt(
        "Quantas unidades de \"" + produto.name + "\" você deseja?\n" +
        "Preço: " + formatarMoeda(produto.preco) + "\n" +
        "(Digite 0 para não comprar)"
      );

      // Cancelar a compra
      if (resposta === null) {
        alert("Simulação cancelada.");
        return;
      }

      // Convertor da resposta para numeros
      quantidade = Number(resposta);

      // Valida: precisa ser número inteiro, não negativo e a resposta não pode ser vazia
      if (resposta.trim() === "" || isNaN(quantidade) || quantidade < 0 || !Number.isInteger(quantidade)) {
        alert("Valor inválido! Digite um número inteiro igual ou maior que 0.");
      } else {
        valido = true;
      }
    }

    quantidades.push(quantidade);
  }

  // Calcula os valores de preço × quantidade e alert
  let total = 0;
  let resumo = "===== RESUMO DA COMPRA =====\n\n";
  let algumSelecionado = false;

  for (let i = 0; i < produtos.length; i++) {
    if (quantidades[i] > 0) {
      const subtotal = produtos[i].preco * quantidades[i];
      total += subtotal;
      algumSelecionado = true;

      resumo += produtos[i].name + "\n" +
                "  Quantidade: " + quantidades[i] + "\n" +
                "  Valor: " + formatarMoeda(subtotal) + "\n\n";
    }
  }

  //total a pagar.
  resumo += "TOTAL A PAGAR: " + formatarMoeda(total);

  // alerta se nenhum produto for selecionado
  if (!algumSelecionado) {
    alert("Nenhum produto foi selecionado.");
    return;
  }

  // 4. Exibe o resultado com alert()
  alert(resumo);
}
