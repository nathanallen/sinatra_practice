class Word < ActiveRecord::Base
  def self.anagrams(input_word)
    sorted_word = input_word.split('').sort.join
    anagrams = []
    SortedLetter.where(sorted: sorted_word).each do |word|
      anagrams = word[:anagrams].split(' ')
    end
    return anagrams.flatten
  end

end
