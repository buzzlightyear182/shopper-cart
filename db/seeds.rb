# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.destroy_all

Product.create([
  {title: "Infographic Guide to Literature", body: "100 stunning, ingenious and absorbing infographics all about literature, featuring your favourite books and authors! Infographic Guide to Literature presents unique, witty and surprising facts about literature, from Shakespeare and Austen to Nabakov and Orwell, to George R. R. Martin and E. L. James. Fascinating stats and all the facts on your favourite writers, poets and playwrights, it features infamous tales from behind the scenes of the literary world. This book celebrates the power of words with graphs, Venn diagrams and charts, this book provides a unique overview of your favourite figures in literature, boasting over 100 original artworks and illustrations and at-a-glance facts to amaze and astound readers.", price: "1450.00", image: File.open("#{Rails.root}/app/assets/images/literature.jpg")},
  {title: "Maps", body: "by Aleksandra Mizielinska and Daniel Mizielinski. Travel the world without leaving your living room. This book of maps is a visual feast for readers of all ages, with lavishly drawn illustrations from the incomparable Mizielinskis. It features not only borders, cities, rivers, and peaks, but also places of historical and cultural interest, eminent personalities, iconic animals and plants, cultural events, and many more fascinating facts associated with every region of our planet.", price: "1500.00", image: File.open("#{Rails.root}/app/assets/images/maps_book.jpg")},
  {title: "How To Be An Explorer of the World", body: "by Keri Smith. Document and observe the world around you. As if you've never seen it before. Take notes. Collect things you find on your travels. Document findings. Notice patterns. Copy. Trace. Focus on one thing at a time. Record what you are drawn to. With a series of interactive prompts and a beautifully hand-illustrated two-color package, readers will enjoy exploring and discovering the world through this gorgeous book.", price: "550.00", image: File.open("#{Rails.root}/app/assets/images/exploreroftheworld.jpg")},
  {title: "Living Out Loud - Activities To Fuel A Creative Life", body: "by Keri Smith.\nRemember those childhood days spent running in your bare feet, playing make-believe, and most of all, living life with wonderment? That youthful enthusiasm and playfulness are key to discovering who you are and what you love to do. Living Out Loud is the perfect prescription for a creative jump start to your life. Included are games, projects, activities, crafts, postcards, and playful ideas that will send you off on an exciting adventure, where you'll discover inspiration around and within you.", price: "800.00", image: File.open("#{Rails.root}/app/assets/images/livingoutloud.jpg")}
])
