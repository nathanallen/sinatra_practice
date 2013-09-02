
# File.open('/usr/share/dict/words').each do |word|
#   Word.create!(word: word.chomp, sorted_letters: word.chomp.split('').sort.join)
# end


Word.all.each do |word|
  sorted = SortedLetter.find_by_sorted(word.sorted_letters)
  if sorted
    SortedLetter.update(sorted.id, :anagrams => sorted.anagrams + " " + word.word, :count => sorted.count + 1)
  else
    SortedLetter.create(:sorted => word.sorted_letters, :anagrams => word.word, :count => 1)
  end
end
