# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  #Mis Notas:
  #que pasa si uno de los strings viene vacio?
  #1. Aplicar reverse a cada string
  #2. Hacer pop de cada arreglo.
  #3. Si el string 2 es mayor al string 1
      #3.1 tengo que hacer el caso especial  de unir el resto de las letras al final
      # en el string resultante.

  #esto hace que las variables se conviertan en arreglo
  # y los pone al reves ejemplo:
  # "abc" = [c , b , a]
  word1 = word1.reverse.chars
  word2 = word2.reverse.chars
  result = []

  while !word1.empty? || !word2.empty?
      result << word1.pop unless word1.empty?
      result << word2.pop unless word2.empty?
  end
  
  result.join
end