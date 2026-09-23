programa {
  funcao inicio() {
    
    // Variaveis de controle de navegação
   inteiro opcao_menu_principal = -1
   inteiro opcao_crud = -1
   inteiro opcao_pagamento = 0


   // Variavel auxiliar para pausar a tela
   cadeia tecla_pausa = ""


   // preços e estoque fixos dos Produtos
   real preco_prod1 = 150.0, preco_prod2 = 60.0, preco_prod3 = 250.0
   inteiro estoque_prod1 = 10, estoque_prod2 = 15, estoque_prod3 = 8


   // Variavel do CARRINHO DE COMPRAS (Qtds dos Itens)
   inteiro qtd_carrinho_prod1 = 0
   inteiro qtd_carrinho_prod2 = 0
   