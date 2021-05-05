
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

PlacingOrder.create!(user_id: "1",
                       topic: "東京で安く解体工事してくれる方？",
                       category: "リフォーム",
                       cost_minimum: "40",
                       cost_maximum: "50",
                       detail: "２階建の木造戸建てです。現地確認可能")                       

User.create!(name:  "あさひ",
             email: "asahi@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

RecievingOrder.create!(user_id: "2",
                       topic: "伝統工法の得意な大工さん！",
                       category: "新築",
                       cost_maximum: "1000",
                       cost_minimum: "3000",
                       detail: "解体後の土地に、日本古来の伝統工法の住宅を建てたいと思っています。ご相談させてください。")

PlacingOrder.create!(user_id: "2",
                       topic: "東京で安く解体工事してくれる方？",
                       category: "リフォーム",
                       cost_minimum: "40",
                       cost_maximum: "50",
                       detail: "２階建の木造戸建てです。現地確認可能")                           
            
User.create!(name:  "金麦",
             email: "kin@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

PlacingOrder.create!(user_id: "3",
                       topic: "免震工事、木造２階建",
                       category: "補強工事",
                       cost_maximum: "50",
                       cost_minimum: "100",
                       detail: "家がかなり古いので、地震が心配で、免震工事を検討しています。")             

User.create!(name:  "プレモル",
             email: "pure@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

RecievingOrder.create!(user_id: "4",
                       topic: "舗装工事します！",
                       category: "舗装",
                       cost_maximum: "10",
                       cost_minimum: "200",
                       detail: "舗装新しくしませんか？最短１日で綺麗に舗装し直します！")             

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
             admin: false)
             
User.create!(name:  "Example6",
             email: "example6@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: false)             

User.create!(name:  "Example7",
             email: "example7@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: false)                   


