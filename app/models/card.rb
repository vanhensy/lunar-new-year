class Card < ApplicationRecord
	extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      ["#{normalize(sender)}_to_#{normalize(receiver)}"],
      ["#{normalize(sender)}_to_#{normalize(receiver)}", :id],
    ]
  end

  def normalize(word)
    word.mb_chars.normalize(:kd).gsub(/\p{Mn}/, '').to_s
  end
end
