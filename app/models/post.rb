class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments


  def add_point
		#todo, fazer transacao atomica

    if self.user.points > 0
      self.update! points: self.points + 1
		  self.user.update! points: self.user.points - 1
      return true
    else
      return false
    end
	end

end
