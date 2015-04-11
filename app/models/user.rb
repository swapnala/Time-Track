class User < ActiveRecord::Base
  enum role: [:manager, :admin, :teammember]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :teammember
  end
  has_many :time_entries ,dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
