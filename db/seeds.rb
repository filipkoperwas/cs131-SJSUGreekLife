# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#First club
Club.create(
  name:"Alpha Epsilon Pi",
  layout:'1',
  description: "Alpha Epsilon Pi, otherwise referred to as ‘A E Pi’, was founded in 1913 at New York University by Charles C. Moskowitz and 10 other Jewish men. The chapter here at SJSU, was founded in 2013 and is one of our 18 chapters with a chapter facility located on 10th street. Alpha Epsilon Pi aspires to encourage the Jewish student to remain dedicated to Jewish ideals, values, and ethics and to prepare the student to be one of tomorrow's leaders so that he may help himself, his family, his community, and his people.",
  picture: "aepi_logo.png",
)


#2nd Club
Club.create(
  name:"Alpha Sigma Phi",
  layout:'1',
  description: "Alpha Sigma Phi was founded on December 6, 1845 by three men with a purpose at Yale University. That purpose was “To Better The Man.” Each year Alpha Sigma Phi recruits new men with the goal of helping them reach their fullest potential by using its five virtues: Purity, Honor, Charity, Silence, and Patriotism. Alpha Sigma Phi was founded at SJSU in the fall of 2013, and continues to strive for their mission of being the co-curricular organization of choice. Those who join Alpha Sigma Phi will find not just friends, but brothers for life. Its members vehemently endeavor to help each other grow and mature not just in academics but in every possible sense.", 
  picture: "asp_logo.png"
)

Club.create(
  name:"Alpha Tau Omega",
  layout:'1',
  description: "Alpha Tau Omega referred to as ‘A T O’, was founded in 1865 in Lexington, Virginia at the Virginia Military Institute. At SJSU, Alpha Tau Omega started as a different organization in 1926 and later affiliated with Alpha Tau Omega in 1950. Alpha Tau Omega is known as “America’s Leadership Development Fraternity”, and strives to instill leadership skills in all of their members. ATO provides a great opportunity for young men who are looking for a truly unique fraternity experience.",
  picture: "ato_logo.png",
)

User.create(
  first_name: "Bob",
  last_name: "Dylan",
  password: "Password1",
  acc_type: "club officer",
  email: "bobbylan1@example.com"
)


