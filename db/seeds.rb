# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])


Answer.destroy_all
TeamChallenge.destroy_all
Member.destroy_all
User.destroy_all
Team.destroy_all
City.destroy_all
Challenge.destroy_all


user1 = User.create!(email: "manon@lol.me", password: "FGHJKL", first_name: "Manoune", last_name: "Cool")
user2 = User.create!(email: "scourbey@gmail.com", password: "Waterloo1410", first_name: "sophie", last_name: "Courbey")

brussels = City.create!(name: "Brussels", picture: 'brussels.jpeg')


challenge1 = Challenge.create!(title: "Booking a Flight: Price Bait", description: "One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections.", address: "123, Avenue Molière 1050 Belgium", score: 10, good_answer: "Pix", bad_answers: "Pix, Loo, Poux", hint: "start with P", input_type: "text", picture: "", cost: 1, gift: "Promo code 1234", city_id: brussels.id)
challenge2 = Challenge.create!(title: "Cloned Website? - Here's What To Do", description: "Find the answer !", address: "33, Rue des Madeleines, 1050 Ixelles", score: 10, good_answer: nil, bad_answers: nil, hint: nil, input_type: "picture", picture: "", cost: 1, gift: "Promo code 13", city_id: brussels.id)
challenge3 = Challenge.create!(title: "Stop Wasting Time And Start yo", description: "One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections.", address: "28 avenue de la galaxie 1410 Waterloo", score: 10, good_answer: "Pix", bad_answers: "Pix, Loo, Poux", hint: "start with P", input_type: "auto", picture: "", cost: 5, gift: "Promo code 14", city_id: brussels.id)
challenge4 = Challenge.create!(title: "Learn Exactly How We Made yo Last Month", description: "One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections.", address: "123, Avenue Molière 1050 Belgium", score: 10, good_answer: "Pix", bad_answers: "Pix, Loo, Poux", hint: "start with P", input_type: "text", picture: "", cost: 1, gift: "Promo code 1234", city_id: brussels.id)
challenge5 = Challenge.create!(title: "Fear? Not If You Use yo The Right Way!", description: "One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections.", address: "123, Avenue Molière 1050 Belgium", score: 10, good_answer: "Pix", bad_answers: "Pix, Loo, Poux", hint: "start with P", input_type: "text", picture: "", cost: 1, gift: "Promo code 1234", city_id: brussels.id)
challenge6 = Challenge.create!(title: "How To Improve At yo In 60 Minutes", description: "One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections.", address: "123, Avenue Molière 1050 Belgium", score: 10, good_answer: "Pix", bad_answers: "Pix, Loo, Poux", hint: "start with P", input_type: "text", picture: "", cost: 1, gift: "Promo code 1234", city_id: brussels.id)
challenge7 = Challenge.create!(title: "15 Tips For yo Success", description: "One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections.", address: "123, Avenue Molière 1050 Belgium", score: 10, good_answer: "Pix", bad_answers: "Pix, Loo, Poux", hint: "start with P", input_type: "text", picture: "", cost: 1, gift: "Promo code 1234", city_id: brussels.id)


team1 = Team.create!(title: "Les blondes", team_picture: "", start_date: Date.tomorrow, end_date: Date.tomorrow, city_id: brussels.id)

# Answer.create!(text: "bonbon", status: Answer::COMPLETED, picture: "", team_id: team1.id, challenge_id: challenge1.id)
# Answer.create!(text: "bonbon", status: Answer::COMPLETED, picture: "", team_id: team1.id, challenge_id: challenge2.id)



Member.create!(score: 120, user_id: user1.id, team_id: team1.id)


TeamChallenge.create!(challenge_id: challenge1.id, team_id: team1.id)



