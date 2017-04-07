# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'abc', email: 'emailTest', email_confirmation: 'emailTest', password_digest: '123456')
User.create(name: 'dfg', email: 'emailTest1', email_confirmation: 'emailTest1', password_digest: '1234567')

Book.create(title: 'testLivro', user_id: 1)
