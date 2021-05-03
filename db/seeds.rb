
# メインのサンプルユーザーを１１人作成する
User.create!(name:  "エビス",
             email: "ebisu@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

RecievingOrder.create!(user_id: "1",
                       topic: "リフォームします！",
                       category: "リフォーム",
                       cost_maximum: "1000",
                       cost_minimum: "20",
                       detail: "かっこいい家にしませんか？やりましょう！")

User.create!(name:  "あさひ",
             email: "asahi@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

RecievingOrder.create!(user_id: "2",
                       topic: "どこよりも安く、解体工事します！",
                       category: "解体",
                       cost_maximum: "300",
                       cost_minimum: "15",
                       detail: "空き家に困っていませんか？解体して綺麗な更地にしましょう！")
            
User.create!(name:  "金麦",
             email: "kin@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

User.create!(name:  "プレモル",
             email: "pure@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

User.create!(name:  "Example1",
             email: "example1@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)
             
User.create!(name:  "Example2",
             email: "example2@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)
             
User.create!(name:  "Example3",
             email: "example3@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)
             
User.create!(name:  "Example4",
             email: "example4@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)
             
User.create!(name:  "Example5",
             email: "example5@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)
             
User.create!(name:  "Example6",
             email: "example6@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)             

User.create!(name:  "Example7",
             email: "example7@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)                   


