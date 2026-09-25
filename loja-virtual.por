programa
{
	funcao inicio()
	{
		// ============================================
		// VARIÁVEIS DE CONTROLE
		// ============================================
		inteiro opcao_menu_principal = -1
		inteiro opcao_crud = -1
		inteiro opcao_pagamento = 0

		cadeia tecla_pausa = ""

		// ============================================
		// PRODUTOS
		// ============================================
		real preco_prod1 = 150.0
		real preco_prod2 = 60.0
		real preco_prod3 = 250.0

		inteiro estoque_prod1 = 10
		inteiro estoque_prod2 = 15
		inteiro estoque_prod3 = 8

		// ============================================
		// CARRINHO
		// ============================================
		inteiro qtd_carrinho_prod1 = 0
		inteiro qtd_carrinho_prod2 = 0
		inteiro qtd_carrinho_prod3 = 0

		// ============================================
		// VARIÁVEIS AUXILIARES
		// ============================================
		inteiro quantidade_temp = 0

		real valor_total_bruto = 0.0
		real valor_desconto = 0.0
		real valor_final = 0.0

		// ============================================
		// MENU PRINCIPAL
		// ============================================
		enquanto (opcao_menu_principal != 0)
		{
			limpa()

			escreva("==============================================\n")
			escreva("       BEM-VINDO A NOSSA LOJA VIRTUAL\n")
			escreva("==============================================\n")
			escreva("1. Ver Produtos e Adicionar ao Carrinho\n")
			escreva("2. Ver Meus Itens no Carrinho\n")
			escreva("3. Alterar Quantidade no Carrinho\n")
			escreva("4. Remover Item do Carrinho\n")
			escreva("0. Finalizar Compra e Ir ao Pagamento\n")
			escreva("==============================================\n")
			escreva("Escolha uma opcao: ")
			leia(opcao_menu_principal)

			escolha (opcao_menu_principal)
			{
				// ========================================
				// CREATE - ADICIONAR AO CARRINHO
				// ========================================
				caso 1:
					limpa()

					escreva("==============================================\n")
					escreva("          CATALOGO DE PRODUTOS\n")
					escreva("==============================================\n")

					escreva("1. Camisa Esportiva\n")
					escreva("   Estoque: ", estoque_prod1)
					escreva(" | Preco: R$ ", preco_prod1, "\n\n")

					escreva("2. Bone Casual\n")
					escreva("   Estoque: ", estoque_prod2)
					escreva(" | Preco: R$ ", preco_prod2, "\n\n")

					escreva("3. Tenis de Corrida\n")
					escreva("   Estoque: ", estoque_prod3)
					escreva(" | Preco: R$ ", preco_prod3, "\n\n")

					escreva("Escolha o produto: ")
					leia(opcao_crud)

					escreva("Digite a quantidade desejada: ")
					leia(quantidade_temp)

					se (opcao_crud == 1)
					{
						se (quantidade_temp > 0 e quantidade_temp <= estoque_prod1)
						{
							qtd_carrinho_prod1 = qtd_carrinho_prod1 + quantidade_temp
							estoque_prod1 = estoque_prod1 - quantidade_temp

							escreva("\nItem adicionado ao carrinho com sucesso!")
						}
						senao
						{
							escreva("\nQuantidade invalida ou estoque insuficiente!")
						}
					}
					senao se (opcao_crud == 2)
					{
						se (quantidade_temp > 0 e quantidade_temp <= estoque_prod2)
						{
							qtd_carrinho_prod2 = qtd_carrinho_prod2 + quantidade_temp
							estoque_prod2 = estoque_prod2 - quantidade_temp

							escreva("\nItem adicionado ao carrinho com sucesso!")
						}
						senao
						{
							escreva("\nQuantidade invalida ou estoque insuficiente!")
						}
					}
					senao se (opcao_crud == 3)
					{
						se (quantidade_temp > 0 e quantidade_temp <= estoque_prod3)
						{
							qtd_carrinho_prod3 = qtd_carrinho_prod3 + quantidade_temp
							estoque_prod3 = estoque_prod3 - quantidade_temp

							escreva("\nItem adicionado ao carrinho com sucesso!")
						}
						senao
						{
							escreva("\nQuantidade invalida ou estoque insuficiente!")
						}
					}
					senao
					{
						escreva("\nProduto invalido!")
					}

					escreva("\n\nPressione ENTER para voltar ao menu...")
					leia(tecla_pausa)
					pare


				// ========================================
				// READ - VISUALIZAR CARRINHO
				// ========================================
				caso 2:
					limpa()

					escreva("==============================================\n")
					escreva("          MEU CARRINHO DE COMPRAS\n")
					escreva("==============================================\n")

					se (qtd_carrinho_prod1 == 0 e qtd_carrinho_prod2 == 0 e qtd_carrinho_prod3 == 0)
					{
						escreva("Seu carrinho esta vazio.\n")
					}
					senao
					{
						se (qtd_carrinho_prod1 > 0)
						{
							escreva("- ", qtd_carrinho_prod1,"x Camisa Esportiva = R$ ",	(qtd_carrinho_prod1 * preco_prod1), "\n")
						}

						se (qtd_carrinho_prod2 > 0)
						{
							escreva("- ", qtd_carrinho_prod2,"x Bone Casual = R$ ",	(qtd_carrinho_prod2 * preco_prod2), "\n")
						}

						se (qtd_carrinho_prod3 > 0)
						{
							escreva("- ", qtd_carrinho_prod3,"x Tenis de Corrida = R$ ",(qtd_carrinho_prod3 * preco_prod3), "\n")
						}

						valor_total_bruto =
							(qtd_carrinho_prod1 * preco_prod1) +
							(qtd_carrinho_prod2 * preco_prod2) +
							(qtd_carrinho_prod3 * preco_prod3)

						escreva("\n----------------------------------------------\n")
						escreva("Total: R$ ", valor_total_bruto, "\n")
					}

					escreva("\nPressione ENTER para voltar ao menu...")
					leia(tecla_pausa)
					pare


				// ========================================
				// UPDATE - ALTERAR QUANTIDADE
				// ========================================
				caso 3:
					limpa()

					escreva("==============================================\n")
					escreva("       ALTERAR QUANTIDADE NO CARRINHO\n")
					escreva("==============================================\n")

					escreva("1. Camisa Esportiva (No carrinho: ",
						qtd_carrinho_prod1, ")\n")

					escreva("2. Bone Casual      (No carrinho: ",
						qtd_carrinho_prod2, ")\n")

					escreva("3. Tenis de Corrida (No carrinho: ",
						qtd_carrinho_prod3, ")\n")

					escreva("\nEscolha o item: ")
					leia(opcao_crud)

					// ----------------------------------------
					// PRODUTO 1
					// ----------------------------------------
					se (opcao_crud == 1)
					{
						estoque_prod1 = estoque_prod1 + qtd_carrinho_prod1

						escreva("Digite a NOVA quantidade: ")
						leia(quantidade_temp)

						se (quantidade_temp >= 0 e quantidade_temp <= estoque_prod1)
						{
							qtd_carrinho_prod1 = quantidade_temp
							estoque_prod1 = estoque_prod1 - quantidade_temp

							escreva("\nQuantidade atualizada com sucesso!")
						}
						senao
						{
							estoque_prod1 = estoque_prod1 - qtd_carrinho_prod1

							escreva("\nQuantidade invalida ou acima do estoque!")
						}
					}

					// ----------------------------------------
					// PRODUTO 2
					// ----------------------------------------
					senao se (opcao_crud == 2)
					{
						estoque_prod2 = estoque_prod2 + qtd_carrinho_prod2

						escreva("Digite a NOVA quantidade: ")
						leia(quantidade_temp)

						se (quantidade_temp >= 0 e quantidade_temp <= estoque_prod2)
						{
							qtd_carrinho_prod2 = quantidade_temp
							estoque_prod2 = estoque_prod2 - quantidade_temp

							escreva("\nQuantidade atualizada com sucesso!")
						}
						senao
						{
							estoque_prod2 = estoque_prod2 - qtd_carrinho_prod2

							escreva("\nQuantidade invalida ou acima do estoque!")
						}
					}

					// ----------------------------------------
					// PRODUTO 3
					// ----------------------------------------
					senao se (opcao_crud == 3)
					{
						estoque_prod3 = estoque_prod3 + qtd_carrinho_prod3

						escreva("Digite a NOVA quantidade: ")
						leia(quantidade_temp)

						se (quantidade_temp >= 0 e quantidade_temp <= estoque_prod3)
						{
							qtd_carrinho_prod3 = quantidade_temp
							estoque_prod3 = estoque_prod3 - quantidade_temp

							escreva("\nQuantidade atualizada com sucesso!")
						}
						senao
						{
							estoque_prod3 = estoque_prod3 - qtd_carrinho_prod3

							escreva("\nQuantidade invalida ou acima do estoque!")
						}
					}
					senao
					{
						escreva("\nOpcao invalida!")
					}

					escreva("\n\nPressione ENTER para voltar ao menu...")
					leia(tecla_pausa)
					pare


				// ========================================
				// DELETE - REMOVER ITEM
				// ========================================
				caso 4:
					limpa()

					escreva("==============================================\n")
					escreva("          REMOVER ITEM DO CARRINHO\n")
					escreva("==============================================\n")

					escreva("1. Camisa Esportiva (No carrinho: ",
						qtd_carrinho_prod1, ")\n")

					escreva("2. Bone Casual      (No carrinho: ",
						qtd_carrinho_prod2, ")\n")

					escreva("3. Tenis de Corrida (No carrinho: ",
						qtd_carrinho_prod3, ")\n")

					escreva("\nEscolha o item que deseja remover: ")
					leia(opcao_crud)

					se (opcao_crud == 1)
					{
						estoque_prod1 = estoque_prod1 + qtd_carrinho_prod1
						qtd_carrinho_prod1 = 0

						escreva("\nCamisa Esportiva removida do carrinho!")
					}
					senao se (opcao_crud == 2)
					{
						estoque_prod2 = estoque_prod2 + qtd_carrinho_prod2
						qtd_carrinho_prod2 = 0

						escreva("\nBone Casual removido do carrinho!")
					}
					senao se (opcao_crud == 3)
					{
						estoque_prod3 = estoque_prod3 + qtd_carrinho_prod3
						qtd_carrinho_prod3 = 0

						escreva("\nTenis de Corrida removido do carrinho!")
					}
					senao
					{
						escreva("\nOpcao invalida!")
					}

					escreva("\n\nPressione ENTER para voltar ao menu...")
					leia(tecla_pausa)
					pare


				// ========================================
				// FINALIZAR COMPRA
				// ========================================
				caso 0:
					pare


				// ========================================
				// OPÇÃO INVÁLIDA
				// ========================================
				caso contrario:
					limpa()

					escreva("Opcao invalida!")
					escreva("\nPressione ENTER para continuar...")
					leia(tecla_pausa)
					pare
			}
		}

		// ============================================
		// CALCULAR TOTAL DA COMPRA
		// ============================================
		valor_total_bruto =
			(qtd_carrinho_prod1 * preco_prod1) +
			(qtd_carrinho_prod2 * preco_prod2) +
			(qtd_carrinho_prod3 * preco_prod3)


		// ============================================
		// ETAPA DE PAGAMENTO
		// ============================================
		limpa()

		se (valor_total_bruto > 0)
		{
			escreva("==============================================\n")
			escreva("             FORMA DE PAGAMENTO\n")
			escreva("==============================================\n")

			escreva("1. Pagamento via PIX - 10% de desconto\n")
			escreva("2. Cartao de Credito - Valor normal\n")

			escreva("\nTotal bruto: R$ ", valor_total_bruto, "\n")

			escreva("\nEscolha a forma de pagamento: ")
			leia(opcao_pagamento)

			escolha (opcao_pagamento)
			{
				caso 1:
					valor_desconto = valor_total_bruto * 0.10
					valor_final = valor_total_bruto - valor_desconto
					pare

				caso 2:
					valor_desconto = 0.0
					valor_final = valor_total_bruto
					pare

				caso contrario:
					escreva("\nOpcao invalida. Valor normal sera aplicado.\n")

					valor_desconto = 0.0
					valor_final = valor_total_bruto
					pare
			}


			// ========================================
			// NOTA FISCAL
			// ========================================
			limpa()

			escreva("======================================================\n")
			escreva("              NOTA FISCAL - LOJA VIRTUAL\n")
			escreva("======================================================\n")
			escreva("Itens comprados:\n\n")

			se (qtd_carrinho_prod1 > 0)
			{
				escreva("- ", qtd_carrinho_prod1,	"x Camisa Esportiva = R$ ",(qtd_carrinho_prod1 * preco_prod1), "\n")
			}

			se (qtd_carrinho_prod2 > 0)
			{
				escreva("- ", qtd_carrinho_prod2,"x Bone Casual = R$ ",(qtd_carrinho_prod2 * preco_prod2), "\n")
			}

			se (qtd_carrinho_prod3 > 0)
			{
				escreva("- ", qtd_carrinho_prod3,"x Tenis de Corrida = R$ ",(qtd_carrinho_prod3 * preco_prod3), "\n")
			}

			escreva("------------------------------------------------------\n")
			escreva("Valor total bruto: R$ ", valor_total_bruto, "\n")
			escreva("Desconto aplicado: R$ ", valor_desconto, "\n")
			escreva("Valor final a pagar: R$ ", valor_final, "\n")
			escreva("======================================================\n")
			escreva("        Obrigado por comprar conosco!\n")
			escreva("======================================================\n")
		}
		senao
		{
			escreva("==============================================\n")
			escreva(" Carrinho vazio. Compra cancelada.\n")
			escreva("==============================================\n")
		}
	}
}