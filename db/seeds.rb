ActiveRecord::Base.transaction do
  50000.times do
    User.create(name: Faker::Name.name, age: rand(50))
  end
end
