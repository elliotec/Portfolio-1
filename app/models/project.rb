class Project < ActiveRecord::Base
  validates :technologies_used, presence: true
  validates :name, length: { in: 4..255 }
  has_many :comments, as: :commentable

  def self.approved
    where(approved: true)
  end

	def approve!
  	approved = true
  	save!
	end
end

