class User < ActiveRecord::Base
validates :code, uniqueness: {case_sensitive: false}
validates :access_level, :presence => true
validates :code, format: /1PI/
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


 before_validation :uppercase_code

  def uppercase_code
    self.code.upcase!
  end

attr_protected
end
