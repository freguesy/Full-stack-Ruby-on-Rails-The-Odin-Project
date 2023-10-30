def cifra(texto, chave)
  texto_cifrado = ""

  texto.each_char do |char|
    if char =~ /[a-z]/
      base = 'a'.ord
    elsif char =~ /[A-Z]/
      base = 'A'.ord
    else
      texto_cifrado += char
      next
    end

    texto_cifrado += ((char.ord - base + chave) % 26 + base).chr
  end

  texto_cifrado
end

puts cifra("tuqui", 2)
