programa
{
	inclua biblioteca Tipos
	inclua biblioteca Texto

	const cadeia ALFABETO [26] = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
		
	
	funcao inicio()
	{

		cadeia frase = "zebra"
		
		inteiro chave = 3

		criptografar(frase, chave)

		
	}

	funcao criptografar(cadeia frase, inteiro chave){

		caracter letra_caracter
		cadeia letra_cadeia
		inteiro numero_caracteres = Texto.numero_caracteres(frase)

		
		para(inteiro i=0; i < numero_caracteres; i++){

			logico encontrou = falso

			letra_caracter = Texto.obter_caracter(frase, i )
			letra_cadeia = Tipos.caracter_para_cadeia(letra_caracter)

			para(inteiro j=0; j < 25; j++){
				se(letra_cadeia == ALFABETO[j]){
					//escreva("encontramos na posição: " , j , "\n")

					inteiro posicao = j + chave

					escreva(ALFABETO [posicao])

					encontrou = verdadeiro 
				

					pare
				} 

			}

			se(encontrou == falso){
				escreva(letra_cadeia)
					
			}

		}
		
		
		
	}

	funcao descriptografar(cadeia frase, inteiro chave){
			
	}
}
