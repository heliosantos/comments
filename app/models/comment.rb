class Comment < ActiveRecord::Base
  attr_accessible :text, :parent_id
  attr_accessor :level

  has_many :replies, :class_name => 'Comment', :foreign_key => 'parent_id'
  belongs_to :parent, :class_name => 'Comment'

  #scope :get_replies, where(parent_id: self.to_param)

  def get_replies
    Comment.where(parent_id: self.to_param)
  end

end
