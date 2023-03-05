namespace :create_dynamo_user do
  desc "ユーザー作成" #desc → description（説明）
  task execute: :environment do #task_nameは自由につけられる
    puts 'ユーザー作成を開始します'
    (10001..100000).each do |i|
      DynamoUser.create(
        user_id: i,
        name: Faker::JapaneseMedia::Naruto.character,
        age: rand(1..48),
        hometown: Faker::Address.city
      )
    end
    puts 'ユーザー作成を終了します'
  end
end
