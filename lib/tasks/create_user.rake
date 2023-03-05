namespace :create_user do
  desc "ユーザー2作成" #desc → description（説明）
  task execute: :environment do #task_nameは自由につけられる
    puts 'ユーザー作成を開始します'
    (1..100000).each do |i|
      user = User.create(
        name: Faker::JapaneseMedia::Naruto.character,
        age: rand(1..48),
        hometown: Faker::Address.city
      )
      puts user
    end
    puts 'ユーザー作成を終了します。'
  end
end