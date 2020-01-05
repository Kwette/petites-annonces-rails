# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# puts "Cleanning DB..."

# User.all.destroy
# Advertisement.all.destroy
# Comment.all.destroy

# puts "DB is clean :)"

puts "Creating users..."

admin_user = User.new
admin_user.name = 'admin'
admin_user.email = 'admin@example.com'
admin_user.password = 'admin'
admin_user.role = 'admin'
admin_user.save!

guest_user = User.new
guest_user.name = 'Toto'
guest_user.email = 'toto@example.com'
guest_user.password = 'toto23'
guest_user.role = 'guest'
guest_user.save!

puts "Users are done :)"


puts "Creating published advertisements..."

first_ad = Advertisement.new
first_ad.name = 'First Advertisement'
first_ad.content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
 eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
 quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
first_ad.state = 'published'
first_ad.price = '240'
first_ad.user_id = '1'
first_ad.save!

second_ad = Advertisement.new
second_ad.name = 'Second Advertisement'
second_ad.content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
 eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
 quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
second_ad.state = 'published'
second_ad.price = '95'
second_ad.user_id = '1'
second_ad.save!

third_ad = Advertisement.new
third_ad.name = 'Third Advertisement'
third_ad.content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
 eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
 quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
third_ad.state = 'published'
third_ad.price = '110'
third_ad.user_id = '2'
third_ad.save!
puts "Published advertisements are done :)"

puts "Creating waiting advertisements..."

fourth_ad = Advertisement.new
fourth_ad.name = 'Fourth Advertisement'
fourth_ad.content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
 eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
 quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
fourth_ad.state = 'waiting'
fourth_ad.price = '50'
fourth_ad.user_id = '1'
fourth_ad.save!

fifth_ad = Advertisement.new
fifth_ad.name = 'Fifth Advertisement'
fifth_ad.content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
 eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
 quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
fifth_ad.state = 'waiting'
fifth_ad.price = '135'
fifth_ad.user_id = '2'
fifth_ad.save!

sixth_ad = Advertisement.new
sixth_ad.name = 'Sixth Advertisement'
sixth_ad.content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
 eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
 quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
sixth_ad.state = 'waiting'
sixth_ad.price = '200'
sixth_ad.user_id = '2'
sixth_ad.save!

puts "Waiting Advertisements are done :)"

puts "Creating comments..."

3.times do
first_comment = Comment.new
first_comment.content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
 eiusmod tempor incididunt ut labore et dolore magna aliqua.'
first_comment.user_id = '2'
first_comment.advertisement_id = '1'
first_comment.save!

second_comment = Comment.new
second_comment.content = ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
 eiusmod tempor incididunt ut labore et dolore magna aliqua.'
second_comment.user_id = '1'
second_comment.advertisement_id = '2'
second_comment.save!

third_comment = Comment.new
third_comment.content = ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
 eiusmod tempor incididunt ut labore et dolore magna aliqua.'
third_comment.user_id = '2'
third_comment.advertisement_id = '3'
third_comment.save!

fourth_comment = Comment.new
fourth_comment.content = ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
 eiusmod tempor incididunt ut labore et dolore magna aliqua.'
fourth_comment.user_id = '1'
fourth_comment.advertisement_id = '4'
fourth_comment.save!

fifth_comment = Comment.new
fifth_comment.content = 'SLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
 eiusmod tempor incididunt ut labore et dolore magna aliqua.'
fifth_comment.user_id = '2'
fifth_comment.advertisement_id = '5'
fifth_comment.save!

sixth_comment = Comment.new
sixth_comment.content = 'SLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
 eiusmod tempor incididunt ut labore et dolore magna aliqua.'
sixth_comment.user_id = '1'
sixth_comment.advertisement_id = '6'
sixth_comment.save!
end

puts "Comments are done :)"

puts "DB_Ok ;)"
