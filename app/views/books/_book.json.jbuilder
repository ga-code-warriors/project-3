json.extract! book, :id, :title, :author, :description, :image, :category, :created_at, :updated_at
json.url book_url(book, format: :json)

