
# sample user 1
User.create!(name:  "エビス",
             email: "ebisu@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

Order.create!(user_id: "1",
              topic: "リフォームします！",
              category: "リフォーム",
              cost_maximum: "1000",
              cost_minimum: "20",
              detail: "かっこいい家にしませんか？やりましょう！",
              order_list: "recieving"
            )
                       
Order.create!(user_id: "1",
              topic: "東京で安く解体工事してくれる方？",
              category: "リフォーム",
              cost_minimum: "40",
              cost_maximum: "50",
              detail: "２階建の木造戸建てです。現地確認可能",
              order_list: "placing"
             )

Relationship.create!(follower_id: "1",
                     followed_id: "2") 
                    
Relationship.create!(follower_id: "1",
                     followed_id: "3") 

Room.create!
Room.create!
Room.create!
Room.create!
Room.create!
Room.create!
                            

UserRoom.create!(order_id: "1",
                 user_id: "1",
                 room_id: "1"
                )   
                
UserRoom.create!(order_id: "1",
                 user_id: "1",
                 room_id: "2"
                )                   

UserRoom.create!(order_id: "2",
                 user_id: "1",
                 room_id: "3"
                )            
                
UserRoom.create!(order_id: "3",
                 user_id: "1",
                 room_id: "5"
                )                   
                
Message.create!(user_id: "1",
                room_id: "1",
                message: "test1"
)             

Message.create!(user_id: "1",
                room_id: "2",
                message: "test2"
)

# sample user 2                       
User.create!(name:  "あさひ",
             email: "asahi@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)



Order.create!(user_id: "2",
              topic: "伝統工法の得意な大工さん！",
              category: "新築",
              cost_maximum: "1000",
              cost_minimum: "3000",
              detail: "解体後の土地に、日本古来の伝統工法の住宅を建てたいと思っています。ご相談させてください。",
              order_list: "recieving"
            )                                                 

Order.create!(user_id: "2",
              topic: "東京で安く解体工事してくれる方？",
              category: "リフォーム",
              cost_minimum: "40",
              cost_maximum: "50",
              detail: "２階建の木造戸建てです。現地確認可能",
              order_list: "placing"
            )


Relationship.create!(follower_id: "2",
                    followed_id: "1")

Relationship.create!(follower_id: "2",
                     followed_id: "5")  
                     
UserRoom.create!(order_id: "1",
                 user_id: "2",
                 room_id: "1"
                ) 
                
UserRoom.create!(order_id: "2",
                 user_id: "2",
                 room_id: "3"
                )     
                
UserRoom.create!(order_id: "2",
                 user_id: "2",
                 room_id: "4"
                )           
                
UserRoom.create!(order_id: "3",
                 user_id: "2",
                 room_id: "5"
                )           
                
UserRoom.create!(order_id: "3",
                 user_id: "2",
                 room_id: "6"
                )                           

Message.create!(user_id: "2",
                room_id: "1",
                message: "test3"
               )                

Message.create!(user_id: "2",
                room_id: "1",
                message: "test4"
               )

# sample user 3                       
User.create!(name:  "金麦",
             email: "kin@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

Order.create!(user_id: "3",
              topic: "リフォームします！",
              category: "リフォーム",
              cost_maximum: "1000",
              cost_minimum: "20",
              detail: "かっこいい家にしませんか？やりましょう！",
              order_list: "placing"
            )             
                       
Relationship.create!(follower_id: "3",
                     followed_id: "1")
                    
Relationship.create!(follower_id: "3",
                     followed_id: "2")
                     
UserRoom.create!(order_id: "1",
                 user_id: "3",
                 room_id: "2"
                )           

UserRoom.create!(order_id: "2",
                 user_id: "3",
                 room_id: "4"
                )           
                
UserRoom.create!(order_id: "3",
                 user_id: "3",
                 room_id: "6"
                )                           
                
Message.create!(user_id: "3",
                room_id: "3",
                message: "test5"
               )                

# sample user 4                       
User.create!(name:  "プレモル",
             email: "pure@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

Order.create!(user_id: "4",
              topic: "東京で安く解体工事してくれる方？",
              category: "リフォーム",
              cost_minimum: "40",
              cost_maximum: "50",
              detail: "２階建の木造戸建てです。現地確認可能",
              order_list: "recieving"
             )             

Relationship.create!(follower_id: "4",
                     followed_id: "1")

Relationship.create!(follower_id: "4",
                     followed_id: "2")                    

# sample user 5                       
User.create!(name:  "Example1",
             email: "example1@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true) 
             
Order.create!(user_id: "5",
              topic: "伝統工法の得意な大工さん！",
              category: "新築",
              cost_maximum: "1000",
              cost_minimum: "3000",
              detail: "解体後の土地に、日本古来の伝統工法の住宅を建てたいと思っています。ご相談させてください。",
              order_list: "placing"
            )             
             
# sample user 6             
User.create!(name:  "Example2",
             email: "example2@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

Order.create!(user_id: "6",
              topic: "東京で安く解体工事してくれる方？",
              category: "リフォーム",
              cost_minimum: "40",
              cost_maximum: "50",
              detail: "２階建の木造戸建てです。現地確認可能",
              order_list: "recieving"
             )
             
# sample user 7             
User.create!(name:  "Example3",
             email: "example3@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)
             
# sample user 8             
User.create!(name:  "Example4",
             email: "example4@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

Order.create!(user_id: "8",
              topic: "免震工事、木造２階建",
              category: "補強工事",
              cost_maximum: "50",
              cost_minimum: "100",
              detail: "家がかなり古いので、地震が心配で、免震工事を検討しています。",
              order_list: "placing"
             )             

# sample user 9             
User.create!(name:  "Example5",
             email: "example5@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: false)

Order.create!(user_id: "9",
              topic: "舗装工事します！",
              category: "舗装",
              cost_maximum: "10",
              cost_minimum: "200",
              detail: "舗装新しくしませんか？最短１日で綺麗に舗装し直します！",
              order_list: "recieving"
             )             

# sample user 10             
User.create!(name:  "Example6",
             email: "example6@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: false)
                
# sample user 11
User.create!(name:  "Example7",
             email: "example7@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: false)   
             
#messages
Message.create!(user_id: "2",
                room_id: "1",
                message: "カフェのリフォームを検討しています。アメリカンな雰囲気にしたいのですが、お見積もりもらえますか？"
)             

Message.create!(user_id: "1",
                room_id: "1",
                message: "もちろんです！店舗の図面と写真はいただけますか？"
)  

Message.create!(user_id: "3",
                room_id: "2",
                message: "庭にバルコニーを作りたいです！３０m２ぐらいです。いくらくらいですか？"
)  

Message.create!(user_id: "1",
                room_id: "2",
                message: "簡単なものでしたら、概算５５万くらいですね。"
)  

Message.create!(user_id: "2",
                room_id: "3",
                message: "港区でビルの解体しようと思っています。お見積もりもらえますか？"
)  

Message.create!(user_id: "1",
                room_id: "3",
                message: "はい！住所や藤本などの資料をもらえますか？"
)

Message.create!(user_id: "2",
                room_id: "3",
                message: "今日の夕方送ります！"
)  

Message.create!(user_id: "3",
                room_id: "4",
                message: "見積もりはただですか？"
) 

Message.create!(user_id: "2",
                room_id: "4",
                message: "ただです！"
) 

Message.create!(user_id: "1",
                room_id: "5",
                message: "大工一筋３０年！てやんでぃ！"
)

Message.create!(user_id: "2",
                room_id: "5",
                message: "なんか違う…"
)

Message.create!(user_id: "3",
                room_id: "6",
                message: "東京で解体してます！ご予算用伺えますか？"
)

Message.create!(user_id: "2",
                room_id: "6",
                message: "５０万以下で考えています。２０坪の木造です。"
)

Message.create!(user_id: "3",
                room_id: "6",
                message: "うちでは厳しいですね…またよろしくお願いいたします！"
)