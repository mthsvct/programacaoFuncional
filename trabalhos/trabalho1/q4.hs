module Q4_trab1 where

import Data.Char

-- a) uma função para contar o número de caracteres que cada string possui sem repetir;
foiLido(caractere, []) = False
foiLido(caractere, c:r)
        | caractere == c = True
        | otherwise = foiLido(caractere, r)

qntSemRepetir([], lidos) = 0
qntSemRepetir(c:r, lidos)
        | foiLido(c, lidos) = qntSemRepetir(r, lidos)
        | otherwise = 1 + qntSemRepetir(r, lidos ++ [c])

-- lista de strings
listaStr([]) = putStrLn " "
listaStr(c:r) = do
        putStrLn c
        listaStr(r)

-- Função que devolve 1 se o caractere c for vogal e 0 caso contrário
ehVogal(c) 
        | c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' = 1
        | c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U' = 1
        | otherwise = 0

-- Função que contabiliza a quantidade de vogais de uma string
quantidade([]) = 0
quantidade(c:r) = ehVogal(c) + quantidade(r)

-- Função que devolve a string que possui a maior quantidade de vogais.
maiorQntVogais([], maior, qnt) = maior
maiorQntVogais(c:r, maior, qnt)
        | quantidade(c) > qnt = maiorQntVogais(r, c, quantidade(maior))
        | otherwise = maiorQntVogais(r, maior, qnt)



