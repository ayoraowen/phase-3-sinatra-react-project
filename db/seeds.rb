puts "🌱 Seeding spices..."

# Seed your database here

response = RestClient.get "http://localhost:3000/books"

all_books_hash = JSON.parse(response)

all_books_hash.each do |book|
    book_item = Book.create(
    title: book["name"],
    # testament: book["testament"],
    # position: book["position"]
    )
    

    book["chapters"].each do |each_chapter|
        a = book["chapters"].find_index(each_chapter)+1
        chapter_item = Chapter.create(
            
            chapter_no: a,
            chapter_text: each_chapter,
            book_id: book_item.id
            
        )
        

        each_chapter.each do |each_verse|
            b = each_chapter.find_index(each_verse)+1
            Verse.create(
                verse_no: b,
                verse_text: each_verse,
                chapter_id: chapter_item.id
            )
        end
    end

end



puts "✅ Done seeding!"
