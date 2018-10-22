class Signup
  include ActiveModel::Model

  attr_accessor :first_name, :last_name, :email, :cluster

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :cluster, presence: true

  def save
    if valid?
      @user = User.create!(
        first_name: first_name,
        last_name: last_name,
        email: email
      )
      @cluster = Cluster.find(cluster)
      @last_group = @cluster.groups.last
      GroupUser.create!(
        user: @user,
        group: last_group
      )
    end
  end
end
