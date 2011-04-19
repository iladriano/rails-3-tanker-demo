class Comment < ActiveRecord::Base
  belongs_to :post

  include Tanker
  tankit 'rails_3_demo' do  
    indexes :commenter
    indexes :postname
  end

  def postname
    self.post.title
  end
end
