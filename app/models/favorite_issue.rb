class FavoriteIssue < ActiveRecord::Base
  attr_accessible :title, :body, :issue
  belongs_to :user
  belongs_to :issue
  validates_uniqueness_of :user_id, :scope => [:issue_id]
end
