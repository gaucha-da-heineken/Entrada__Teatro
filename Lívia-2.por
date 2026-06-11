programa {
  funcao inicio() {
     inteiro idade, dia_semana, tipo_sessao, opcao_combo
    real preco_base = 15.0, desconto = 0.0, preco_ingresso, preco_combo = 0.0, total
    cadeia categoria = "", nome, nome_combo = "Nenhum"

    escreva("==========================\n")
    escreva(" TEATRO - AUTOATENDIMENTO\n")
    escreva("==========================\n")

    escreva("Informe seu nome: ")
    leia(nome)
    
    escreva("Informe sua idade: ")
    leia(idade)
    se(idade < 0 ou idade > 105)
    escreva("Idade inválida. Digite entre 0 e 105.\n")//Evitando números inexistentes

    escreva("\n Dia da semana: \n")
    escreva("1- Segunda/Terça 30% off\n")
    escreva("2- Quarta- Meia para todos\n")
    escreva("3- Quinta a domingo\n")
    escreva("Escolha:")
    leia(dia_semana)

    escreva("\nTipo da sessão: \n")
    escreva("1- Fileira VIP: +R$5\n")
    escreva("2- Fileira Normal: sem adicional\n")//Exlpicação mais detalhada
    escreva("Escolha:")
    leia(dia_semana)
    se(tipo_sessao < 1 ou tipo_sessao > 2)
        escreva("Opção inválida. Digite 1 ou 2.\n")//evita tipo de sessões inexistentes

    se(idade <= 12 ou idade >= 60) {
      categoria = "Meia entrada"
      desconto = preco_base * 0.5
    } senao {
      categoria = "Inteira"
    }

    se (dia_semana == 1){
      desconto = preco_base * 0.3
    se (categoria == "Inteira")
    categoria = "Promocional 30% off"
    }
    senao se (dia_semana == 2){
      desconto = preco_base * 0.5
      categoria = "Quarta meia para todos"
    }

    preco_ingresso = preco_base - desconto

    se(tipo_sessao == 1){
      preco_ingresso = preco_ingresso + 5
    }
    total = preco_ingresso + preco_combo

    escreva("\n======Ingresso=======\n")
    escreva("Cliente", nome, "\n")
    escreva("Idade", idade, "\n")
    escreva("Categoria", categoria, "\n")
    escreva("Preço base: R$",preco_base, "\n")
    escreva("Desconto: R$",desconto, "\n")
    escreva("Total ingresso: R$",preco_ingresso, "\n")
    escreva("================================\n")
    escreva("TOTAL A PAGAR: R$",total, "\n")



  }
}
