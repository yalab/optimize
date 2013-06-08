MAX_ROWS = 50000

if User.count < MAX_ROWS
  ActiveRecord::Base.transaction do
    (MAX_ROWS - User.count).times do
      User.create(name: Faker::Name.name, age: rand(50))
    end
  end
end

if Group.count < MAX_ROWS
  ActiveRecord::Base.transaction do
    (MAX_ROWS - Group.count).times do
      Group.create(name: Faker::Lorem.word)
    end
  end
end

if MemberShip.count < 1
  max_group_id = Group.maximum(:id)
  ActiveRecord::Base.transaction do
    User.all.find_in_batches do |users|
      users.each do |user|
        user.member_ships.create(group_id: rand(max_group_id))
      end
    end
  end  
end
