# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  id: 1,
  name: "太郎"
)
User.create(
  id: 2,
  name: "次郎"
)
User.create(
  id: 3,
  name: "三郎"
)
User.create(
  id: 4,
  name: "四郎"
)
User.create(
  id: 5,
  name: "五郎"
)

Pet.create(
  id: 1,
  user_id: 1,
  name: "コタツ"
)
Pet.create(
  id: 2,
  user_id: 1,
  name: "タマRX"
)
Pet.create(
  id: 3,
  user_id: 2,
  name: "モロ"
)
