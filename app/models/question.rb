class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :answers, :dependent => :destroy
  accepts_nested_attributes_for :answers, reject_if: lambda {|attributes| attributes['name'].blank?}
end

