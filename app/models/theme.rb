# frozen_string_literal: true

# == Schema Information
#
# Table name: themes
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Theme < ApplicationRecord
  validates :name, presence: true

  has_many :sentence_themes, dependent: :destroy
  has_many :sentences, through: :sentence_themes
end
