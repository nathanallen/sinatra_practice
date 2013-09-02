get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :home
end

# post '/' do
#   puts "[LOG] Getting /"
#   puts "[LOG] Params: #{params.inspect}"
#   erb :cat-listings
# end

get '/new' do
  puts "[LOG] Getting /new"
  puts "[LOG] Params: #{params.inspect}"
  erb :new
end

post '/confirm' do
  puts "[LOG] Getting /new"
  puts "[LOG] Params: #{params.inspect}"
  cat = Category.find_by_name(params[category.to_sym]
  cat.posts << Post.create!(title: params[title.to_sym], description: params[description.to_sym])
  erb :confirm
end

get '/c/:cat' do
  puts "[LOG] Getting /c/:cat"
  puts "[LOG] Params: #{params.inspect}"
  @cat = params[:cat]
  x = Category.select(:id).where(name: @cat)
  @post = Post.where(category_id: x)
  puts "[LOG] #{@post}"
  erb :cat
end

# post '/new_post' do
#   puts "[LOG] Posting to /new_post"
#   puts "[LOG] Params: #{params.inspect}"

#   erb :confirmation
# end
