def legacy_mod(hash)
  new_hash = {}
  hash.each do |key, value|
    value.each do |letter|
      new_hash[letter.downcase] = key
    end
  end

  Hash[new_hash.sort]
end
