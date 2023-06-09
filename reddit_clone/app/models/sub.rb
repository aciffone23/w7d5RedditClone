class Sub < ApplicationRecord
    validates :title, :moderator_id, uniqueness: true, presence: true

    belongs_to :moderator,
        foreign_key: :moderator_id,
        class_name: :User

end
