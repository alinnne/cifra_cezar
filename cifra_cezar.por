programa
{
    inclua biblioteca Tipos
    inclua biblioteca Texto

    const cadeia ALFABETO[26] = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}

    funcao inicio()
    {
        inteiro chave
        cadeia frase
        cadeia palavra_criptografada

        escreva("Digite a palavra ou frase que deseja criptografar: ")
        leia(frase)

        escreva("Digite a chave: ")
        leia(chave)

        palavra_criptografada = criptografar(frase, chave)
        escreva("Palavra Criptografada: ", palavra_criptografada, "\n")

        
        cadeia palavra_descriptografada = descriptografar(palavra_criptografada, chave)
        escreva("Palavra Descriptografada: ", palavra_descriptografada, "\n")
    }

    funcao cadeia criptografar(cadeia frase, inteiro chave)
    {
        cadeia palavra_crip = ""

        caracter letra_caracter
        cadeia letra_cadeia
        inteiro numero_caracteres = Texto.numero_caracteres(frase)

        para(inteiro i = 0; i < numero_caracteres; i++)
        {
            logico encontrou = falso

            letra_caracter = Texto.obter_caracter(frase, i)
            letra_cadeia = Tipos.caracter_para_cadeia(letra_caracter)

            para(inteiro j = 0; j < 26; j++)
            {
                se(letra_cadeia == ALFABETO[j])
                {
                    inteiro posicao = (j + chave) % 26
                    palavra_crip += ALFABETO[posicao]
                    encontrou = verdadeiro

                    pare
                }
            }

            se(encontrou == falso)
            {
                palavra_crip += letra_cadeia
            }
        }

        retorne palavra_crip
   }




    funcao cadeia descriptografar(cadeia frase, inteiro chave)
    {
        cadeia palavra_descriptografada = ""

        caracter letra_caracter
        cadeia letra_cadeia
        inteiro numero_caracteres = Texto.numero_caracteres(frase)

        para(inteiro i = 0; i < numero_caracteres; i++)
        {
            logico encontrou = falso

            letra_caracter = Texto.obter_caracter(frase, i)
            letra_cadeia = Tipos.caracter_para_cadeia(letra_caracter)

            para(inteiro j = 0; j < 26; j++)
            {
                se(letra_cadeia == ALFABETO[j])
                {
                    inteiro posicao = (j - chave + 26) % 26
                    palavra_descriptografada += ALFABETO[posicao]
                    encontrou = verdadeiro

                    pare
                }
            }

            se(encontrou == falso)
            {
                palavra_descriptografada += letra_cadeia
            }
        }

        retorne palavra_descriptografada

        
  }
}
