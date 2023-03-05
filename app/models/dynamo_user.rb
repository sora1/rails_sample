class DynamoUser
  include Dynamoid::Document

  table name: :user, key: :user_id
  field :name, :string
  field :hometown, :string, default: '東京都'
  field :age, :integer

  global_secondary_index hash_key: :hometown, range_key: :age,
                         projected_attributes: :all,
                         name: 'hometown-age-index'
end