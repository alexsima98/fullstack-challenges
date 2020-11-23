def louchebemize(sentence)
  # TODO: implement your louchebem translator
  suf = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
  array = sentence.split(/\b/)
  array.map! do |word|
    return word unless word.size > 1

    if %w(a e i o u).include?(word[0])
      'l' + word + suf.sample
    else
      firstt = word.split('').find_index { |vowel| %w(a e i o u).include?(vowel) }
      'l' + word[firstt...word.size] + word[0...firstt] + suf.sample
    end
  end
  array.join
end
