print "Creating Users..."
User.destroy_all


u1 = User.create! name: 'alex', password: 'chicken', email: 'alex@ga.co'
u2 = User.create! name: 'angela', password: 'chicken', email: 'angela@ga.co'
u3 = User.create! name: 'cassie', password: 'chicken', email: 'cassie@ga.co'
u4 = User.create! name: 'ethan', password: 'chicken', email: 'ethan@ga.co'

puts "Created #{User.count} users."