class Comment
  include Mongoid::Document
  field :title, type: String
  field :body, type: String

  def op
  	if self.parent
  		self.parent.op
  	else
  		self
  	end
  end

  def is_op?
  	self == self.op
  end

  has_many :children, class_name: "Comment", inverse_of: :parent
  belongs_to :parent, class_name: "Comment", inverse_of: :children
end
