class Campaign < ApplicationRecord
  has_many :sessions
  belongs_to :organization
  has_and_belongs_to_many :editors, class_name: "User",
                          join_table: :campaigns_editors,
                          association_foreign_key: :editor_id
end
