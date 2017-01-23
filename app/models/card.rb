class Card < ApplicationRecord
	extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  def slug_candidates
    [
      :sender,
      [:sender, :id],
      [:sender, :receiver, :id]
    ]
  end
end
