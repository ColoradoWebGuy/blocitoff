
require 'rubygems'
require 'faker'

# Create a user to test with
user = User.create!(
  name: 'Steven Test',
  email: 'shotgunsteven4@gmail.com',
  password: 'password'
)

10.times do
  Checklist.create!(
      title: Faker::Lorem.sentence,
      checked: [true, false].sample,
      user:   user
  )
end

puts "#{User.count} users created"
puts "#{Checklist.count} items created"
