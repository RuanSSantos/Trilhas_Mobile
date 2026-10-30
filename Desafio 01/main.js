function simularCompra() {
    // Definição dos produtos (devem corresponder aos preços apresentados na página)
    const p1Nome = "Fone de Ouvido Bluetooth";
    const p1Preco = 150.00;

    const p2Nome = "Mouse Sem Fio Ergonómico";
    const p2Preco = 80.00;

    const p3Nome = "Teclado Mecânico RGB";
    const p3Preco = 250.00;

    // 1. Perguntar as quantidades com prompt()
    let q1Input = prompt(`Quantas unidades de "${p1Nome}" (R$ ${p1Preco.toFixed(2)}) deseja comprar?`, "0");
    let q2Input = prompt(`Quantas unidades de "${p2Nome}" (R$ ${p2Preco.toFixed(2)}) deseja comprar?`, "0");
    let q3Input = prompt(`Quantas unidades de "${p3Nome}" (R$ ${p3Preco.toFixed(2)}) deseja comprar?`, "0");

    // 2. Converter as respostas para número com Number()
    let q1 = Number(q1Input) || 0;
    let q2 = Number(q2Input) || 0;
    let q3 = Number(q3Input) || 0;

    // Garantir que não existam valores negativos
    q1 = Math.max(0, q1);
    q2 = Math.max(0, q2);
    q3 = Math.max(0, q3);

    // Verificar se nada foi selecionado
    if (q1 === 0 && q2 === 0 && q3 === 0) {
        alert("Nenhum produto foi selecionado para compra.");
        return;
    }

    // 3. Calcular os valores parciais e o total
    const totalP1 = q1 * p1Preco;
    const totalP2 = q2 * p2Preco;
    const totalP3 = q3 * p3Preco;

    const valorTotal = totalP1 + totalP2 + totalP3;

    // 4. Montar a mensagem de resumo e exibir com alert()
    let resumo = "--- RESUMO DA COMPRA ---\n\n";

    if (q1 > 0) {
        resumo += `${p1Nome}: ${q1}x = R$ ${totalP1.toFixed(2)}\n`;
    }
    if (q2 > 0) {
        resumo += `${p2Nome}: ${q2}x = R$ ${totalP2.toFixed(2)}\n`;
    }
    if (q3 > 0) {
        resumo += `${p3Nome}: ${q3}x = R$ ${totalP3.toFixed(2)}\n`;
    }

    resumo += `\n------------------------\n`;
    resumo += `VALOR TOTAL: R$ ${valorTotal.toFixed(2)}`;

    alert(resumo);
}