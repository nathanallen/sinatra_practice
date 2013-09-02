get '/' do
  @input = params[:input]
  unless @input == nil
    @anagrams = Word.anagrams(@input)
  end
  erb :index
end
