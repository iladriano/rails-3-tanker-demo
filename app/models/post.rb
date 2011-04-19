class Post < ActiveRecord::Base
  has_many :comments
  include Tanker
  tankit 'rails_3_demo' do
    indexes :title
  end
end
