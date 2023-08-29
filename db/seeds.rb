# NOTE: Refaire le lesson model car les boolean "false" font foirer la seed


puts "Cleaning database..."
User.destroy_all
Video.destroy_all
Lesson.destroy_all
Favorite.destroy_all


#############################################
#################   USERS   #################
#############################################


puts "Creating users..."


alice = User.new(
  email:    "alice@example.com",
  password: "password",
  username: "Alice",
  xp: 300,
  level: 10,
  reward: "Super GIFT!"
)


file = File.open(Rails.root.join("db/seeds/users/alice.jpg"))
alice.avatar.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
alice.save



bob = User.new(
  email:    "bob@example.com",
  password: "password",
  username: "Bob",
  xp: 600,
  level: 15,
  reward: "Super GIFT!"
)

file = File.open(Rails.root.join("db/seeds/users/bob.jpg"))
bob.avatar.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
bob.save


charlie = User.new(
  email:    "charlie@example.com",
  password: "password",
  username: "Charlie",
  xp: 1500,
  level: 21,
  reward: "Super GIFT!"
)

file = File.open(Rails.root.join("db/seeds/users/charlie.jpg"))
charlie.avatar.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
charlie.save


puts "--------------"
puts "Users created!"




############################################
################   VIDEOS   ################
############################################


puts "Creating videos..."


# Video.create!(
#   name: "Breathing Exercise 1",
#   video_category: "breathing",
#   duration: 5,
#   boost: "Chest",
#   level: "beginner"
# )

# Video.create!(
#   name: "Breathing Exercice 2",
#   video_category: "posture",
#   duration: 10,
#   boost: "Backbend",
#   level: "intermediate"
# )

# Video.create!(
#   name: "Posture Exercice 1",
#   video_category: "posture",
#   duration: 10,
#   boost: "Backbend",
#   level: "beginner"
# )

# Video.create!(
#   name: "Posture Exercice 2",
#   video_category: "posture",
#   duration: 10,
#   boost: "Backbend",
#   level: "intermediate"
# )




video1 = Video.new(
  name: "Breathing Exercise 1",
  video_category: "breathing",
  duration: 5,
  boost: "Chest",
  level: "beginner"
)

file = File.open(Rails.root.join("db/seeds/videos/miniature1.jpg"))
video1.miniature.attach(io: file, filename: "miniature.jpg", content_type: "image/jpeg")
video1.save


video2 = Video.new(
  name: "Breathing Exercice 2",
  video_category: "posture",
  duration: 10,
  boost: "Backbend",
  level: "intermediate"
)

file = File.open(Rails.root.join("db/seeds/videos/miniature2.jpg"))
video2.miniature.attach(io: file, filename: "miniature.jpg", content_type: "image/jpeg")
video2.save


video3 = Video.new(
  name: "Posture Exercice 1",
  video_category: "posture",
  duration: 10,
  boost: "Backbend",
  level: "beginner"
)

file = File.open(Rails.root.join("db/seeds/videos/miniature3.jpg"))
video3.miniature.attach(io: file, filename: "miniature.jpg", content_type: "image/jpeg")
video3.save


video4 = Video.new(
  name: "Posture Exercice 2",
  video_category: "posture",
  duration: 10,
  boost: "Backbend",
  level: "intermediate"
)

file = File.open(Rails.root.join("db/seeds/videos/miniature4.jpg"))
video4.miniature.attach(io: file, filename: "miniature.jpg", content_type: "image/jpeg")
video4.save




puts "--------------"
puts "Videos created!"




#############################################
#################  LESSONS  #################
#############################################


puts "Creating lessons..."


Lesson.create!(
  user_id: User.first.id,                 # Assign other User id
  name: "Beginner Yoga Flow",
  duration: 30,
  breathing: true,
  posture: true,
  meditation: true,
  level: "beginner",
  boost: "Backbend"
)

Lesson.create!(
  user_id: User.first.id,                 # Assign other User id
  name: "Intermediate Meditation",
  duration: 15,
  breathing: true,
  posture: true,
  meditation: true,
  level: "intermediate",
  boost: "Neck"
)

Lesson.create!(
  user_id: User.first.id,                 # Assign other User id
  name: "Advanced Yoga Flow",
  duration: 60,
  breathing: true,
  posture: true,
  meditation: true,
  level: "advanced",
  boost: "Hips"
)

Lesson.create!(
  user_id: User.last.id,                 # Assign other User id
  name: "Intermediate Stretching",
  duration: 20,
  breathing: true,
  posture: true,
  meditation: true,
  level: "intermediate",
  boost: "Hamstring"
)



puts "Lessons created!"


#############################################
################  FAVORITES  ################
#############################################


puts "Creating favorites..."


Favorite.create!(
  user_id: User.first.id,                  # Assign other User id
  lesson_id: Lesson.first.id               # Assign other Lesson id
)

Favorite.create!(
  user_id: User.first.id,                  # Assign other User id
  lesson_id: Lesson.last.id               # Assign other Lesson id
)

Favorite.create!(
  user_id: User.last.id,                   # Assign other User id
  lesson_id: Lesson.first.id                # Assign other Lesson id
)

Favorite.create!(
  user_id: User.last.id,                   # Assign other User id
  lesson_id: Lesson.last.id                # Assign other Lesson id
)


puts "--------------"
puts "Favorites created!"

puts "--------------"
puts "Finished!"
