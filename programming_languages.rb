def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, p_languages|
    p_languages.each do |key, value|
      if new_hash.has_key?(key)
        new_hash[key][:style] << style
      else
        new_hash[key] = value
        new_hash[key][:style] = [style]
      end
    end
  end
  new_hash
end
