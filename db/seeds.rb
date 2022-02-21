# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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

q1.answers << a2
q2.answers << a1 << a6
q3.answers << a7 << a3
q4.answers << a4 << a5






print "Creating Users..."
User.destroy_all


u1 = User.create! name: 'alex', password: 'chicken'
u2 = User.create! name: 'angela', password: 'chicken'
u3 = User.create! name: 'cassie', password: 'chicken'
u4 = User.create! name: 'ethan', password: 'chicken'

puts "Created #{User.count} users."
