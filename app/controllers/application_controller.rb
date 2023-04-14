class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/books' do
    books = Book.all
    books.to_json
  end

  get '/chapters' do
    chapters = Chapter.all
    chapters.to_json
  end

  get '/verses' do
    verses = Verse.all
    verses.to_json
  end

  get '/books/:id' do

    book = Book.find(params[:id])
    book.to_json(include: [:verses, :chapters])#[:verses, :chapters]

  end



end
