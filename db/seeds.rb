Review.delete_all
Movie.delete_all

movie1 = Movie.create!(title: "Arrival of a Train", gross: 100.00, release_date: "Apr 1 1896", mpaa_rating: "G", description: "RELEASED MORE THAN 5 YEARS AGO: first movie ever made was by the Lumiere Brothers")

movie2 = Movie.create!(title: "The Second Best Science Fiction Movie Ever Made", gross: 2000.00, release_date: "Jan 1 2010", mpaa_rating: "G", description: "RELEASED LESS THAN 5 YEARS AGO: Many years ago, eight of our astronauts were abducted and brought to another planet.")

movie3 = Movie.create!(title: "Brazil", gross: 280000.00, release_date: "Jun 6 1988", mpaa_rating: "R", description: "one of Terry Gilliam's best movies, can you believe Robert DiNero is in it too?")

movie1.reviews.create!(comment: "this movie is amazing!", star_rating: 4, reviewer_name: "Alexander the great")
movie1.reviews.create!(comment: "yep, pretty ground breaking stuff", star_rating: 3, reviewer_name: "John Doe")
movie2.reviews.create!(comment: "I'm not a fan of science Fiction!", star_rating: 2, reviewer_name: "Jayne Cobb")
movie3.reviews.create!(comment: "Best and most bizarre movie ever", star_rating: 5, reviewer_name: "Mr Tuttle")
