catz = ["Shoes", "Bikes", "Cars", "Planes", "Rockets", "Interplanetary-Luxury-Liners"]

catz.each_with_index do |cat|
  nam = "For sale, a lovely #{cat}" 
  des = "Going fast, this terrific #{cat} can be yours for only $1"

  new_c = Category.create!(name: cat)
  new_c.posts << Post.create!(title: nam, description: des)
end

#category_id: Category.select(:id).where(name: cat)
