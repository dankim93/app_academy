class Contactshare < ActiveRecord::Base
validates :contact_id, :presence => true, :uniqueness => { :scope => :user_id }
  belongs_to :contact,
    primary_key: :id,
    foreign_key: :contact_id,
    class_name: :Contact

  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
end
