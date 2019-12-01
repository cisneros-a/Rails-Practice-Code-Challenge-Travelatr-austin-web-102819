class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination

    validates :content, length: {minimum: 100, too_short: "100 is the minimum of characters allowed"}
end
