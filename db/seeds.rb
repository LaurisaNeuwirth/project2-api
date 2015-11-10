Comment.delete_all
Topic.delete_all
Honey.delete_all
User.delete_all

%w(sue dustin adam).each do |name|
  email = "#{name}@example.com"
  user = User.create!(name: name, email: email, password: 'abc123',
               password_confirmation: 'abc123')

  3.times do |i|
    #create 3 honeys per user, each honey named uniquely
    user.honeys.create!(name: "honey_#{i}_#{user.name}")
  end


end
