Comment.delete_all
Topic.delete_all
Honey.delete_all
User.delete_all

# Users.create!([
#       {name: "User 1", email: "User1@example.com", password: 'abc123', password_confirmation: 'abc123'},
#       {name: "User 2", email: "User2@example.com", password: 'abc123', password_confirmation: 'abc123'},
#       {name: "User 3", email: "User3@example.com", password: 'abc123', password_confirmation: 'abc123'},
#   ])

# Honeys.create!([
#       {name: "Honey 1", user_id: 1},
#       {name: "Honey 2", user_id: 1},
#       {name: "Honey 3", user_id: 1},
#       {name: "Honey 4", user_id: 2},
#       {name: "Honey 5", user_id: 2},
#       {name: "Honey 6", user_id: 2},
#       {name: "Honey 7", user_id: 3},
#       {name: "Honey 8", user_id: 3},
#       {name: "Honey 9", user_id: 3},

#   ])


# OLD CODE
%w(sue dustin adam).each do |name|
  email = "#{name}@example.com"
  user = User.create!(name: name, email: email, password: 'abc123',
               password_confirmation: 'abc123')

  3.times do |i|
    #create 3 honeys per user, each honey named uniquely
    user.honeys.create!(name: "honey_#{i}_#{user.name}")
  end

end

Honey.all.each do |honey|
  3.times do |i|
    count = i + 1
    title =  "title_#{count}_#{honey.name}"
    desc = "desc_#{count}_#{honey.name}"
    honey.topics.create!(title: title, description: desc)
    puts "Created topic #{title}"
  end

end


#Create 3 new Topics for each Honey

# Topics.create!([
#       {title: "Topic 1", decription: "Date no. 1 for Honey 1", honey_id: 1},
#       {title: "Topic 2", decription: "Date no. 2 for Honey 1", honey_id: 1},
#       {title: "Topic 3", decription: "Date no. 3 for Honey 1", honey_id: 1},
#       {title: "Topic 4", decription: "Date no. 1 for Honey 2", honey_id: 2},
#       {title: "Topic 5", decription: "Date no. 2 for Honey 2", honey_id: 2},
#       {title: "Topic 6", decription: "Date no. 3 for Honey 2", honey_id: 2},
#       {title: "Topic 6", decription: "Date no. 1 for Honey 3", honey_id: 3},
#       {title: "Topic 7", decription: "Date no. 2 for Honey 3", honey_id: 3},
#       {title: "Topic 8", decription: "Date no. 3 for Honey 3", honey_id: 3},
#   ])



  # OLD CODE Create 3 topics each per user, each with unique title
  # title = "Topic Title: "
  # description = "Description of Topic: "
  # honey_id = 1
  # topic = Topic.create!(title: title, description: description, honey_id: honey_id)

  # 3.times do |i|
  # honey.topics.create!(title: "Topic#{i+1}", description: "This is description", honey_id: i)
  # end



