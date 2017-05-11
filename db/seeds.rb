# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#  <div class="row">
#   <div class = "col-md-3 col-sm-3">
#     <h3>Ruby On Rails Power</h3>
#     <%= image_tag "covers/ruby_on_rails_power.jpeg" %>
#     <%= link_to 'Read More', book_path(1), class: "btn btn-primary" %>
#   </div>
#   <div class = "col-md-3 col-sm-3">
#     <h3>Ajax On Rails</h3>
#     <%= image_tag "covers/ajax_on_rails.jpeg" %>
#     <%= link_to 'Read More', book_path(1), class: "btn btn-primary" %>
#   </div>
#   <div class = "col-md-3 col-sm-3">
#     <h3>Beginning PHP5</h3>
#     <%= image_tag "covers/php_5.jpeg" %>
#     <%= link_to 'Read More', book_path(1), class: "btn btn-primary" %>
#   </div>
#   <div class = "col-md-3 col-sm-3">
#     <h3>Head First PHP</h3>
#     <%= image_tag "covers/head_first_php.jpeg" %>
#     <%= link_to 'Read More', book_path(1), class: "btn btn-primary" %>
#   </div>
# </div>
#
# <div class="row">
#   <div class = "col-md-3 col-sm-3">
#     <h3>HTML5 Trainer</h3>
#     <%= image_tag "covers/html5_trainer.jpeg" %>
#     <%= link_to 'Read More', book_path(1), class: "btn btn-primary" %>
#   </div>
#   <div class = "col-md-3 col-sm-3">
#     <h3>HTML5 and CSS3</h3>
#     <%= image_tag "covers/html5_css3.jpeg" %>
#     <%= link_to 'Read More', book_path(1), class: "btn btn-primary" %>
#   </div>
#   <div class = "col-md-3 col-sm-3">
#     <h3>PHP Cookbook</h3>
#     <%= image_tag "covers/php_cookbook.jpeg" %>
#     <%= link_to 'Read More', book_path(1), class: "btn btn-primary" %>
#   </div>
#   <div class = "col-md-3 col-sm-3">
#     <h3>Ruby On Rails Tutorial</h3>
#     <%= image_tag "covers/ruby_on_rails_tutorial.jpeb.jpg" %>
#     <%= link_to 'Read More', book_path(1), class: "btn btn-primary" %>
#   </div>
# </div>

User.destroy_all
Category.destroy_all
Publisher.destroy_all
Author.destroy_all
Book.destroy_all


User.create!(name:  "lap14tclc2",
             email: "lap14tclc2@example.com",
             password:              "123456",
             password_confirmation: "123456",
             admin: true)

10.times do |n|
  name  = Faker::Name.name
  email = "example-#{n1}@example.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password
               )
end


cat1 = Category.create(name: 'Fiction')
cat2 = Category.create(name: 'History')
cat3 = Category.create(name: 'Religion')
cat4 = Category.create(name: 'Biography')
cat5 = Category.create(name: 'Science & Technology')
cat6 = Category.create(name: 'Web Development')
cat7 = Category.create(name: 'Cookbooks, Food & Wine')

pub1 = Publisher.create(name: 'Crossway')
pub2 = Publisher.create(name: 'Third World Press')
pub3 = Publisher.create(name: 'Roombo')
pub4 = Publisher.create(name: 'Livepath')
pub5 = Publisher.create(name: 'Rooxo')
pub6 = Publisher.create(name: 'Avamba')
pub7 = Publisher.create(name: 'Skyvu')

auth1 = Author.create(first_name: 'George', last_name: 'Orwell')
auth2 = Author.create(first_name: 'William', last_name: 'Shakespeare')
auth3 = Author.create(first_name: 'Abraham', last_name: 'Vergese')
auth4 = Author.create(first_name: 'F. Scott', last_name: 'Fitzgerald')
auth5 = Author.create(first_name: 'Kathryn', last_name: 'Stockett')
auth6 = Author.create(first_name: 'James', last_name: 'McPherson')
auth7 = Author.create(first_name: 'Simon', last_name: 'Schama')
auth8 = Author.create(first_name: 'Richard', last_name: 'Paul')
auth9 = Author.create(first_name: 'Daniel', last_name: 'Black')
auth10 = Author.create(first_name: 'Jean', last_name: 'Smith')
auth11 = Author.create(first_name: 'Iain', last_name: 'Murray')
auth12 = Author.create(first_name: 'Anthony', last_name: 'Carter')
auth13 = Author.create(first_name: 'Marilynn', last_name: 'Robinson')
auth14 = Author.create(first_name: 'Charles', last_name: 'Spurgeon')
auth15 = Author.create(first_name: 'Thabiti', last_name: 'Anyabwile')
auth16 = Author.create(first_name: 'Nelson', last_name: 'Mandela')
auth17 = Author.create(first_name: 'Richard', last_name: 'Newman')
auth18 = Author.create(first_name: 'George', last_name: 'Mardsen')
auth19 = Author.create(first_name: 'George', last_name: 'Orwell')

book1 = Book.create(title: '1984',
                    category_id: 1,
                    author_id: 1,
                    publisher_id: 2,
                    isbn: '0451524934',
                    year: '1948',
                    price: '$7.78',
                    buy: 'http://www.amazon.com/1984-Signet-Classics-George-Orwell/dp/0451524934/ref=sr_1_1?s=books&ie=UTF8&qid=1461811694&sr=1-1&keywords=1984',
                    excerpt: 'Written in 1948, 1984 was George Orwell’s chilling prophecy about the future. And while 1984 has come and gone, Orwell’s narrative is timelier than ever. 1984 presents a startling and haunting vision of the world, so powerful that it is completely convincing from start to finish. No one can deny the power of this novel, its hold on the imaginations of multiple generations of readers, or the resiliency of its admonitions—a legacy that seems only to grow with the passage of time.',
                    format: 'Paperback',
                    pages: 328,
                    coverpath: 'http://ecx.images-amazon.com/images/I/31twj9hz1kL._AA160_.jpg')

book2 = Book.create(title: 'Hamlet',
                    category_id: 1,
                    author_id: 2,
                    publisher_id: 3,
                    isbn: '074347712X',
                    year: '1603',
                    price: '$3.87',
                    buy: 'http://www.amazon.com/Hamlet-Folger-Library-Shakespeare-William/dp/074347712X/ref=sr_1_1?s=books&ie=UTF8&qid=1461812564&sr=1-1&keywords=hamlet',
                    excerpt: 'Hamlet is Shakespeare’s most popular, and most puzzling, play. It follows the form of a “revenge tragedy,” in which the hero, Hamlet, seeks vengeance against his father’s murderer, his uncle Claudius, now the king of Denmark. Much of its fascination, however, lies in its uncertainties.',
                    format: 'Paperback',
                    pages: 342,
                    coverpath: 'http://ecx.images-amazon.com/images/I/51yChJoybWL._AA160_.jpg')

book3 = Book.create(title: 'Cutting For Stone',
                    category_id: 1,
                    author_id: 3,
                    publisher_id: 4,
                    isbn: '0375714367',
                    year: '2010',
                    price: '$9.49',
                    buy: 'http://www.amazon.com/Cutting-Stone-Abraham-Verghese/dp/0375714367/ref=sr_1_1?s=books&ie=UTF8&qid=1461812753&sr=1-1&keywords=cuttingforstone',
                    excerpt: 'Marion and Shiva Stone are twin brothers born of a secret union between a beautiful Indian nun and a brash British surgeon. Orphaned by their mother’s death and their father’s disappearance, bound together by a preternatural connection and a shared fascination with medicine, the twins come of age as Ethiopia hovers on the brink of revolution. ',
                    format: 'Paperback',
                    pages: 667,
                    coverpath: 'http://ecx.images-amazon.com/images/I/61qQR7qMMLL._AA160_.jpg')

book4 = Book.create(title: 'The Great Gatsby',
                    category_id: 1,
                    author_id: 4,
                    publisher_id: 5,
                    isbn: '0743273567',
                    year: '2004',
                    price: '$10.58',
                    buy: 'http://www.amazon.com/Great-Gatsby-F-Scott-Fitzgerald/dp/0743273567/ref=sr_1_1?s=books&ie=UTF8&qid=1461812877&sr=1-1&keywords=thegreatgatsby',
                    excerpt: 'The Great Gatsby, F. Scott Fitzgerald’s third book, stands as the supreme achievement of his career. This exemplary novel of the Jazz Age has been acclaimed by generations of readers. The story of the fabulously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan, of lavish parties on Long Island at a time when The New York Times noted “gin was the national drink and sex the national obsession,” it is an exquisitely crafted tale of America in the 1920s.',
                    format: 'Paperback',
                    pages: 180,
                    coverpath: 'http://ecx.images-amazon.com/images/I/51khWutZqCL._AA160_.jpg')

book5 = Book.create(title: 'The Help',
                    category_id: 1,
                    author_id: 5,
                    publisher_id: 6,
                    isbn: '0425232204',
                    year: '2011',
                    price: '$9.52',
                    buy: 'http://www.amazon.com/Help-Kathryn-Stockett/dp/0425232204/ref=sr_1_1?s=books&ie=UTF8&qid=1461813396&sr=1-1&keywords=thehelp',
                    excerpt: 'Aibileen is a black maid in 1962 Jackson, Mississippi, who is always taken orders quietly, but lately she is unable to hold her bitterness back. Her friend Minny has never held her tongue but now must somehow keep secrets about her employer that leave her speechless. White socialite Skeeter just graduated college. She is full of ambition, but without a husband, she is considered a failure. Together, these seemingly different women join together to write a tell-all book about work as a black maid in the South, that could forever alter their destinies and the life of a small town.',
                    format: 'Paperback',
                    pages: 544,
                    coverpath: 'http://ecx.images-amazon.com/images/I/51LCQ8djHrL._AA160_.jpg')