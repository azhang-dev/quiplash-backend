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
    question: "What does N.F.T stand for?"  
)
a9 = Answer.create!(
    answer: "Don't know, don't care",
    question_id: q5
)
a10 = Answer.create!(
  answer: "Non-functioning-transactions",
  question_id: q5
)


q6 = Question.create!(
    question: "What really happened to Jeffrey Epstein?"
)
a11 = Answer.create!(
  answer: "He killed himself obviously",
  question_id: q6
)
a12 = Answer.create!(
  answer: "Don't know, don't care",
  question_id: q6
)

q7 = Question.create!(
    question: "How do we fix the NBN?" 
)

q8 = Question.create!(
    question: "The purest spring water comes from '__________'."
)

q9 = Question.create!(
    question: "What happens when you turn 30 years old?"
)

q10 = Question.create!(
    question: "When is 'cunt' an appropriate word to call your friend?"
)

q11 = Question.create!(
    question: "Explain why VSCode is better than Atom."
)

q12 = Question.create!(
    question: "Why doesn't Stanley wear shirts?"
)

q13 = Question.create!(
    question: "What the fuck are react hooks?"
)

q14 = Question.create!(
    question: "Did any of you get any sleep last night?"
)

q15 = Question.create!(
    question: "What's the best way to secure a coffee date?"
)

q16 = Question.create!(
    question: "Is COVID real?"
)

q17 = Question.create!(
    question: "What superhero/villain would make the best therapist?"
)

q18 = Question.create!(
    question: "If you had a third hand, what would you use it for?"
)

q19 = Question.create!(
    question: "What is the secret to happiness?"
)

q20 = Question.create!(
    question: "Just type something funny idk lol im outta ideas"
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
b1.questions << q1<< q2 << q3 << q4
b2.questions << q5



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




