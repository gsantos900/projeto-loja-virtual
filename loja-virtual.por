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
     inteiro qtd_carrinho_prod3 = 0

    // Variáveis auxiliares para operações
    inteiro quantidade_tempo = 0
    real valor_total_bruto = 0.0
    real valor_desconto = 0.0
    real valor_final = 0.0

    // 1. LAÇO PRINCIPAL DO SISTEMA
    enquanto (opcao_menu_principal !=0){
      // Limpa a tela a cada iteração para manter o menu organizado
      limpa()

      escreva("=== BEM VINDO À NOSSA LOJA VIRTUAL ===")

      escreva("------------------------------------------")
      escreva("MENU PRINCIPAL")

        escreva("1. Ver produtos e adicionar ao carrinho (CREATE)")

        escreva("2. ver Meus Itens no carrinho (READ)")

        escreva("3. alternar quantidade no carrinho (UPDATE)")

        escreva("4. Remover Item do Carrinho (DELETE)")

        escreva("0. Finalisar compra e ir ao pagamento")

        escreva("Escolha uma opção: ")
        leia(opcao_menu_principal)

        escreva(opcao_menu_principal)
        {
            // =======================================================
            // C - CREATE (Adicionar Itens oa Carrinho)
            // =======================================================

            caso 1:
    limpa()
    escreva("--- CATÁLOGO DE PRODUTOS ---\n
    ")
    
    escreva("1. Camisa Esportiva (Estoque: ", estoque_prod1, ") - R$ ", preco_
    ")
    escreva("2. Boné Casual      (Estoque: ", estoque_prod2, ") - R$ ", preco_
    ")
    escreva("3. Tênis de Corrida (Estoque: ", estoque_prod3, ") - R$ ", preco_
    ")
    
    escreva("Escolha o produto que deseja adicionar: ")
    leia(opcao_crud)
    
    escreva("Digite a quantidade desejada: ")
    leia(quantidade_temp)
    
    se (opcao_crud == 1)
    {
      se (quantidade_temp > 0 e quantidade_temp <= estoque_prod1) {
        


