class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments


  def add_point
		#todo, fazer transacao atomica
		self.update! points: self.points + 1
		self.user.update! points: self.points - 1
	end

end
