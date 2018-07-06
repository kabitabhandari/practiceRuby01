class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :first_name, :last_name

  def fname
    self.first_name.split.first # eg User.last=> John Smith then self refers to John Smith. self if not write also ok.
    #in this case I have taken whole first name so can write up to self.first_name  #self.first_name.split[0]
  end

  def lname
    self.last_name.split.first
    #self.last_name.split[0]
  end

end
