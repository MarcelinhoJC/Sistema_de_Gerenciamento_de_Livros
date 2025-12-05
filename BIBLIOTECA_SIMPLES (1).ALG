Algoritmo "Biblioteca_Simples"
Var
opcao, totalLivros, i, idx : inteiro
livros : vetor[1..100] de caractere
titulo, busca : caractere
encontrado : logico
Procedimento cadastrarLivro()
Inicio
Se totalLivros >= 100 entao
escreval("Limite de 100 livros atingido.")
Senao
totalLivros := totalLivros + 1
escreval("Título do livro: ")
leia(titulo)
livros[totalLivros] := titulo
escreval("Livro cadastrado (posição ", totalLivros, ").")
FimSe
FimProcedimento
Procedimento listarLivros()
Inicio
escreval("=== LISTA DE LIVROS ===")
Se t
otalLivros = 0 entao
escreval("Nenhum livro cadastrado.")
Senao
Para i de 1 ate totalLivros faca
escreval(i, " - ", livros[i])
FimPara
FimSe
FimProcedimento
Procedimento buscarLivro()
Inicio
Se totalLivros = 0 entao
escreval("Nenhum livro cadastrado.")
Senao
escreval("Digite o título para buscar (exato): ")
leia(busca)
encontrado := falso
idx := 1
Enquanto (idx <= totalLivros) e (encontrado = falso) faca
Se livros[idx] = busca entao
escreval("Livro encontrado: ", livros[idx], " (posição ", idx, ")")
encontrado := verdadeiro
Senao
idx := idx + 1
FimSe
FimEnquanto
Se encontrado = falso entao
escreval("Livro não encontrado.")
FimSe
FimSe
FimProcedimento
Inicio
totalLivros := 0
opcao := -1
Repita
escreval("")
escreval("====== BIBLIOTECA SIMPLES ======")
escreval("1 - Cadastrar livro")
escreval("2 - Listar livros")
escreval("3 - Buscar livro (título exato)")
escreval("0 - Sair")
escreval("Opção: ")
leia(opcao)
Escolha opcao
Caso 1
cadastrarLivro()
Caso 2
listarLivros()
Caso 3
buscarLivro()
Caso 0
escreval("Saindo...")
Caso Contrario
escreval("Opção inválida.")
FimEscolha
Ate opcao = 0
FimAlgoritmo