dicionario = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(string, dicionario)
  resultado = Hash.new(0)
  string.split.each do |palavra|
    dicionario.each do |item|
      if palavra.downcase.include?(item)
        resultado[item] += 1
      end
    end
  end
  resultado
end

puts substring("below low low low cuthbert blows his ownership hornbill", dicionario)
