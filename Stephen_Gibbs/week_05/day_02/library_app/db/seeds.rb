Author.destroy_all

a1 = Author.create({
:name =>"Enid Blyton",
:nationality =>"English",
:dob => "1897/08/11",
:genre => "mystery",
:image => "http://karenlawsonartist.com/wp-content/uploads/2015/11/Blyton-image.jpg"
  })

Book.destroy_all

b1 = Book.create({
  :title =>"The Enchanted Wood",
  :year =>"1939",
  :genre => "mystery",
  :synopsis =>"delightful children's tale",
  :author_id => a1.id

  })

p a1
p b1
