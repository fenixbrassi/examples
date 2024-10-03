# @param {Integer[]} nums
# @param {Integer} p
# @return {Integer}
def min_subarray(nums, p)
  # si es vacio? que pasa?
  #1 Primeto sumar los elementos del arreglo
      #1.1 si la suma ya es divisible entre P entonces regreso cero
  #2 Si la suma total no divisible entre p debo 
  # buscar cuales son los numeros que no hacen posible que sea
  #divisble entre p
  total_sum = nums.sum
  remainder_needed = total_sum % p
  return 0 if remainder_needed == 0

  #diccionario para guardar el indice de restos
  prefix_sum_mod = {0 => -1 }
  current_sum = 0
  min_len = nums.size

  nums.each_with_index do |num , i|
      current_sum += num
      current_mod = current_sum % p

      #Busarmos el valor que necesitamos para que sea divisible por p
      target_mod = (current_mod - remainder_needed) % p

      #si existe un subarray que nos permita hacer la resta
      # calculamos su longitud

      if prefix_sum_mod.key?(target_mod)
          min_len = [min_len , i - prefix_sum_mod[target_mod]].min
      end

      #actualizamos el diccionario con el indice actual
      prefix_sum_mod[current_mod] = i
  end

  #sino encontramos ningun subconjunto valido , devolvemos -1
  min_len == nums.size ? -1 : min_len
end