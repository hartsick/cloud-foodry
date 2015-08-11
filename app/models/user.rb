class User < ActiveRecord::Base
  has_and_belongs_to_many :groups

  def full_name
    first_name + " " + last_name
  end
end
