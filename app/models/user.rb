class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :registerable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :articles, foreign_key: "author_id"

  def full_name
    email
    # "#{first_name} #{last_name}" # TODO
  end
end
