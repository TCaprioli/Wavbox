# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Sub.destroy_all


u1 = User.create(username: "bastard", bio: "I'm a little twerp", password_digest: "basehead1")
u2 = User.create(username: "dweeb", bio: "I'm a bum", password_digest: "dopeinmouth1")
u3 = User.create(username: "curt", bio: "I'm a bum", password_digest: "dopeinmouth1")

Sub.create(subscribed_id: u1.id, subscriber_id: u2.id)
Sub.create(subscribed_id: u3.id, subscriber_id: u2.id)