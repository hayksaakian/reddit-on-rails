class Comment
  include Mongoid::Document
  field :body, type: String

  has_many :children, class_name: "Comment", inverse_of: :parent
  belongs_to :parent, class_name: "Comment", inverse_of: :children
end
