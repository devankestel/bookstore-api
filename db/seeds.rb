# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


abc_publisher = PublishingHouse.create(name: "ABC Publisher", discount: 40)
acme_publishing_house = PublishingHouse.create(name: "Acme Publishing House", discount: 50)
foobar_corporation = PublishingHouse.create(name: "Foobar Corporation", discount: 55)

james_jackson = Author.create(name: "James Jackson")
roberta_rock = Author.create(name: "Roberta Rock")
daniel_duck = Author.create(name: "Daniel Duck")
amanda_djidjinski = Author.create(name: "Amanda Djidjinski")
zoe_zack = Author.create(name: "Zoe Zack")
bill_burray = Author.create(name: "Bill Burray")
charlie_chuck = Author.create(name: "Charlie Chuck")

authors = Author.all

book1 = Book.create(title: "The Great Escape", author: charlie_chuck, publisher: abc_publisher, price: 24.20)
book2 = Book.create(title: "Saving Myself", author: bill_burray, publisher: abc_publisher, price: 14.13)
book3 = Book.create(title: "The Killer Doctors", author: zoe_zack, publisher: abc_publisher, price: 15.12)
book4 = Book.create(title: "Marianne", author: amanda_djidjinski, publisher: abc_publisher, price: 10.50)
book5 = Book.create(title: "On the Verge of Salvation", author: amanda_djidjinski, publisher: acme_publishing_house, price: 11.76)
book6 = Book.create(title: "Fields of L", author: daniel_duck, publisher: acme_publishing_house, price: 27.87)
book7 = Book.create(title: "Waterfront", author: roberta_rock, publisher: acme_publishing_house, price: 11.97)
book8 = Book.create(title: "Bored as Hell", author: bill_burray, publisher: foobar_corporation, price: 10.96)
book9 = Book.create(title: "History of the Silk Road", author: charlie_chuck, publisher: foobar_corporation, price: 8.10)
booka = Book.create(title: "Something for Later", author: james_jackson, publisher: james_jackson, price: 9.54)
bookb = Book.create(title: "What If", author: daniel_duck, publisher: daniel_duck, price: 13.32)
bookc = Book.create(title: "Lilly Reborn", author: amanda_djidjinski, publisher: foobar_corporation, price: 16.43)
bookd = Book.create(title: "Anathema", author: zoe_zack, publisher: zoe_zack, price: 9.41)
booke = Book.create(title: "Best Of", author: roberta_rock, publisher: foobar_corporation, price: 12.24)
bookf = Book.create(title: "Anyway", author: bill_burray, publisher: foobar_corporation, price: 19.99)

books = Book.all 

for author in authors
    for book in books
        value = rand(0..10)
        Npscore.create(value: value, author: author, book: book) 
    end
end


