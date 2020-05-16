
User.destroy_all
Message.destroy_all

user1 = User.create(username: 'user1')
user2 = User.create(username: 'user2')

message1 = Message.create(content: "wuzzuuuuuppp", user_id:4)
message2 = Message.create(content: "hey dawg", user_id:5)
message3 = Message.create(content: "wyd", user_id:4)
message4 = Message.create(content: "nmu?", user_id:5)

user1.messages << message1
user1.messages << message3
user2.messages << message2
user2.messages << message4