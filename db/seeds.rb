print "Creating Users..."
User.destroy_all


u1 = User.create! name: 'alex', password: 'chicken'
u2 = User.create! name: 'angela', password: 'chicken'
u3 = User.create! name: 'cassie', password: 'chicken'
u4 = User.create! name: 'ethan', password: 'chicken'

puts "Created #{User.count} users."