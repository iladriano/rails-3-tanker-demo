class Post < ActiveRecord::Base
  acts_as_taggable
  has_many :comments
  include Tanker
  tankit 'rails_3_tanker_demo' do
    indexes :title
  end
end
