class User < ApplicationRecord
  acts_as_voter

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,  authentication_keys: [:login]
  
  
validates :username, presence: true, uniqueness: { case_sensitive: false }
validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true
validates :description, length: {maximum: 280}
attr_writer :login
attr_accessor :score, :ranking, :postf, :days_since_joined


  def login
    @login || self.username || self.email
  end

  def score
    words=0.0
    entries = 0
    
    User.find(self.id).posts.each do |post|
      words+=post.body.split.size
      entries+=1
    end

    @set_score= ((entries) + (words/1000.0)).round(3)
  end

  def ranking
    @set_ranking= User.all.sort_by(&:score).reverse.pluck(:id).index(self.id) + 1
  end

  def days_since_joined
    user = User.find(self.id)
    no_of_days_since_joining = ((Time.now-user.created_at)/86400 +1).to_i
    @set_days_since_joined=no_of_days_since_joining
  end

  def postf
    user = User.find(self.id)
    if(user.posts.size >0)
      @set_postf = (days_since_joined).to_f/user.posts.size
    else
      @set_postf = 99999
    end
  end

    

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:username) || conditions.has_key?(:email)
      where(conditions.to_h).first
    end
  end
  



end
