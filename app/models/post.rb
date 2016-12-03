class Post < ApplicationRecord
	enum role: [:user, :vip, :admin]
	belongs_to :user, :class_name => 'User', :foreign_key => 'user_id'
	default_scope -> { order('created_at DESC') }
	validates :text, presence: true
end
