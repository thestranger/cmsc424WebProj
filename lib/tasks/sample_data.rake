namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Student.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 student_id: "123123456",
                 password: "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@example.org"
      sid = "1111111" + n.to_s
      password  = "password"
      Student.create!(name: name,
                   email: email,
                   student_id: sid,
                   password: password,
                   password_confirmation: password)
    end
  end
end