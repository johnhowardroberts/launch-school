books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

# How would you order this array of hashes based on the year of
# publication of each book, from the earliest to the latest?

# NOTES

# remember, #sort_by always returns an array, can use #to_h to convert it back if needs be

# we can treat each hash as a 'book' one layer down
# we don't need to convert to year strings to integers as they are all the same length so the order will be stable

books.sort_by do |book|
  book[:published]
end

# =>  [{:title=>"War and Peace", :author=>"Leo Tolstoy", :published=>"1869"},
#      {:title=>"Ulysses", :author=>"James Joyce", :published=>"1922"},
#      {:title=>"The Great Gatsby", :author=>"F. Scott Fitzgerald", :published=>"1925"},
#      {:title=>"One Hundred Years of Solitude", :author=>"Gabriel Garcia Marquez", :published=>"1967"}]
