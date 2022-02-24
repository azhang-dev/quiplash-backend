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

puts "Created #{Answer.count} Answer"

print "Creating questions ..."

Question.destroy_all


q1 = Question.create!(
    question: "A double rainbow doesn't have gold at the end of it. Instead, it has ____________",
)

q2 = Question.create!(
    question: "As Shakesphear once said, '___________'",

)

q3 = Question.create!(
    question: "What Adam thought when he first met Eve",

)

q4 = Question.create!(
    question: "A terrible name for a morning talk show",

)

q5 = Question.create!(
    question: "Why do I suck at code so much?"  
)

q1.answers << a2
q2.answers << a1 << a6
q3.answers << a7 << a3
q4.answers << a4 << a5

puts "created #{Question.count} questions."
puts "the answer of #{Question.first.question} is ..."


<<<<<<< HEAD
=======
print "creating QuestionBank..."
Questionbank.destroy_all
b1 = Questionbank.create!(
    name: "Random questions",
)

b2 = Questionbank.create!(
    name: "GA related questions",
)

puts "created #{Questionbank.count} questionbanks."
b1.questions << q1<< q2 << q3 << q4
b2.questions << q5



>>>>>>> 38a574cab88e2d024c3318a2a0fc075d6f6bb82d
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




<<<<<<< HEAD

=======
>>>>>>> 38a574cab88e2d024c3318a2a0fc075d6f6bb82d
