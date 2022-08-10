class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :stripe_id, presence: true
  has_many :orders
  before_validation :create_on_stripe, on: :create
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def create_on_stripe
    params = { email: email, name: name }
    response = Stripe::Customer.create(params)
    self.stripe_id = response.id
  end
end
