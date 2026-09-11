programa {
  funcao inicio() {
    //varáveis de controle de navegação 
    inteiro opcao_menu_principal = 1
    inteiro opcao_crud = 1
    inteiro opcao_pagamnento = 0

    //Variável auxiliar para pausar a tela 
    cadeia tecla_pausa = ""

    //preço e estoque fixos do produto 
    real preco_pred = 150.0 , preco_prod2 = 60.0 , preco_prod3 = 250.0
    inteiro estoque_prod1 = 10 , estoque_prod2 = 15 , estoque_prod3 = 8

    //variáveis do CARRINHO DE COMPRA (qtds dos intens)
    inteiro qtds_carrinho_prod1 = 0
    inteiro qtds_carrinho_prod2 = 0
    inteiro qtd_carrinho_prod3 = 0

    //variáveis auxiliares para operações 
    inteiro quantidade_temp = 0 
    real valor_total_bruto = 0.0 
    real valor_desconto = 0.0
    real valor_final = 0.0
    
    // 1. LAÇO PRINCIPAL DO SISTEMA 
    enquanto (opcao_menu_principal ! = 0){
    
      // limpa a tela a cada interação para manter o menu organizado 
      limpa()
      escreva("=== BEM-VINDO Á NOSSA LOJA VIRTUAL ===")
      escreva("--------------------------------------")
      escreva("MENU PRINCIPAL")

      escreva("1. Ver Produtos e Adicionar ao Carrinho (CREATE)\n")
      escreva("2. Ver Meus Itens no Carrinho (READ)\n")
      escreva("3. Alterar Quantidade no Carrinho (UPDATE)\n")
      escreva("4. Remover Item do Carrinho (DELETE)\n")
      escreva("0. Finalizar Compra e Ir ao Pagamento\n")

     escreva("Escolha uma opção: ")
     leia(opcao_menu_principal)

     escolha (opcao_menu_principal)
    {
    
    // =============================================
    // C - CREATE (Adicionar Itens ao Carrinho)
    // =============================================

       
  }
}
