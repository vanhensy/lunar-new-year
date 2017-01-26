class Card < ApplicationRecord
	extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  def slug_candidates
    [
      :sender,
      [:sender, :receiver],
      [:sender, :receiver, :id]
    ]
  end
end
