# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

print "Creating Answers..."
Answer.destroy_all

a1 = Answer.create!(
    answer: "BEST CODE IS THE CODE THATS NEVER WRITTEN",
)

a2 = Answer.create!(
    answer: "MANY MANY TINY DEAD BODIES",

)

a3 = Answer.create!(
    answer: "NICE APPLES",

)

a4 = Answer.create!(
    answer: "YIFFING IN THE MORNING",

)

a5 = Answer.create!(
    answer: "I CANT TALK",

)

a6 = Answer.create!(
    answer: "LETS DO A QUICK CODE REVIEW",

)

a7 = Answer.create!(
    answer: "HELLO THERE",
)

a8 = Answer.create!(
    answer: "your mum lol"
)

puts "Created #{Answer.count} Answer"

print "Creating questions ..."

Question.destroy_all


q1 = Question.create!(
    question: "Race Track",
)

q2 = Question.create!(
    question: "Construction Site",

)

q3 = Question.create!(
    question: "Wedding",

)

q4 = Question.create!(
    question: "Cat Show",

)

q5 = Question.create!(
    question: "Cemetery"  
)
a9 = Answer.create!(
    answer: "Don't know, don't care",
    question_id: q5.id
)
a10 = Answer.create!(
  answer: "Non-functioning-transactions",
  question_id: q5.id
)


q6 = Question.create!(
    question: "Vineyard"
)
a11 = Answer.create!(
  answer: "He killed himself obviously",
  question_id: q6.id
)
a12 = Answer.create!(
  answer: "Don't know, don't care",
  question_id: q6.id
)

q7 = Question.create!(
    question: "Candy Factory" 
)
a13 = Answer.create!(
  answer: "We all know it's too late to fix it",
  question_id: q7.id
)
a14 = Answer.create!(
  answer: "Huawei 5G :)",
  question_id: q7.id
)

q8 = Question.create!(
    question: "Harbour Docks"
)
a15 = Answer.create!(
  answer: "Me",
  question_id: q8.id
)
a16 = Answer.create!(
  answer: "'Somewhere over the rainbow'",
  question_id: q8.id
)

q9 = Question.create!(
    question: "Jail"
)
a17 = Answer.create!(
  answer: "You become a wizard...Harry",
  question_id: q9.id
)

a18 = Answer.create!(
  answer: "Your feet get cracked up, your liver doesn't work, etc",
  question_id: q9.id
)

q10 = Question.create!(
    question: "Jazz Club"
)
a19 = Answer.create!(
  answer: "When your teacher thinks your talking about them",
  question_id: q10.id
)
a20 = Answer.create!(
  answer: "Are you really friends if you can't call them a cunt?",
  question_id: q10.id
)

q11 = Question.create!(
    question: "Library"
)

a21 = Answer.create!(
  answer: "'(Open Source) is a cancer that attaches itself in an intellectual property sense to everything it touches'",
  question_id: q11.id
)
a22 = Answer.create!(
  answer: "notepad++ is actually the superior choice",
  question_id: q11.id
)

q12 = Question.create!(
    question: "Coal Mine"
)
a23 = Answer.create!(
  answer: "He can't code with a shirt on",
  question_id: q12.id
)
a24 = Answer.create!(
  answer: "He should take off his pants too.",
  question_id: q12.id
)

q13 = Question.create!(
    question: "Art Museum"
)
a25 = Answer.create!(
  answer: "https://reactjs.org/docs/hooks-intro.html",
  question_id: q13.id
)
a26 = Answer.create!(
  answer: "Good Question",
  question_id: q13.id
)

q14 = Question.create!(
    question: "The U.N"
)
a27 = Answer.create!(
  answer: "No",
  question_id: q14.id
)
a28 = Answer.create!(
  answer: "Yes",
  question_id: q14.id
)

q15 = Question.create!(
    question: "Gas Station"
)
a29 = Answer.create!(
  answer: "Just swipe right",
  question_id: q15.id
)
a30 = Answer.create!(
  answer: "Ask Shay",
  question_id: q15.id
)

q16 = Question.create!(
    question: "Retirement Home"
)
a31 = Answer.create!(
  answer: "If you want unlimited 5G access, yes",
  question_id: q16.id
)
a32 = Answer.create!(
  answer: "Ask Clive Palmer",
  question_id: q16.id
)

q17 = Question.create!(
    question: "Rock Concert"
)
a33 = Answer.create!(
  answer: "Iron Man",
  question_id: q17.id
)
a34 = Answer.create!(
  answer: "Batman",
  question_id: q17.id
)

q18 = Question.create!(
    question: "Statdium"
)

a35 = Answer.create!(
  answer: "Don't ask questions you don't want the answer to",
  question_id: q18.id
)
a36 = Answer.create!(
  answer: "Amputation",
  question_id: q18.id
)
q19 = Question.create!(
    question: "Subway"
)

a37 = Answer.create!(
  answer: "'Happiness does not exist' - Cassie, 2020",
  question_id: q19.id
)

a38 = Answer.create!(
  answer: "'I dunno' - Alex, 2020",
  question_id: q19.id
)

q20 = Question.create!(
    question: "SigthSeeing Bus"
)
a39 = Answer.create!(
  answer: "something funny idk lol im outta ideas",
  question_id: q20.id
)
a40 = Answer.create!(      
  answer: "Lorem ipsum dolor sit amet consectetur adipisicing elit.",
  question_id: q20.id
)




q1.answers << a2 << a8
q2.answers << a1 << a6
q3.answers << a7 << a3
q4.answers << a4 << a5

puts "created #{Question.count} questions."
puts "the answer of #{Question.first.question} is ..."


print "creating QuestionBank..."
Questionbank.destroy_all
b1 = Questionbank.create!(
    name: "Random questions",
)

b2 = Questionbank.create!(
    name: "GA related questions",
)

puts "created #{Questionbank.count} questionbanks."
b1.questions << q1<< q2 << q3 << q4 << q6 << q7 << q8 << q9 << q16 << q17 << q18 << q19 << q20
b2.questions << q5 << q10 << q11 << q12 << q13 << q14 << q15 << q21



print "Creating Users..."
User.destroy_all


u1 = User.create! name: 'alex', password: 'chicken', email: 'alex@ga.co'
u2 = User.create! name: 'angela', password: 'chicken', email: 'angela@ga.co'
u3 = User.create! name: 'cassie', password: 'chicken', email: 'cassie@ga.co'
u4 = User.create! name: 'ethan', password: 'chicken', email: 'ethan@ga.co'

puts "Created #{User.count} users."

u1.questionbanks << b1 << b2

puts "User #{User.first.name} has #{u1.questionbanks.count} questionbanks"

print "fuck off rooms..."
Room.destroy_all




